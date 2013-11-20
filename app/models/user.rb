class User < ActiveRecord::Base
	EMAIL_REGEXP = /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/

	validates_presence_of :full_name, :day_of_birth, :email
	validate :email_format
	validates_uniqueness_of :email
  validates :cpf, uniqueness: true, allow_blank: true
  validates :day_of_birth, :date => true

  scope :confirmed, -> { where.not(confirmed_at: nil) }

	has_secure_password

  def self.authenticate(email, password)
    user = confirmed.find_by(email: email)
    if user.present?
      user.authenticate(password)
    end
  end

	def exibition_text
		"#{registry} - #{full_name}"
	end

  def confirm!
    return if confirmed?

    self.confirmed_at = Time.current
    self.confirmation_token = ''
    save!
  end

  def confirmed?
    confirmed_at.present?
  end

  ############################################
  #callback events
  ############################################
  before_create do |user|
    user.confirmation_token = SecureRandom.urlsafe_base64
    user.admission_date = Time.current
    user.registry = (Time.current.year).to_s + "-" + 
      (Time.current.month).to_s + "-" + 
      (User.where(admission_date: 1.month.ago..DateTime.now).count() + 1).to_s 
  end

	private 

	def email_format 
		errors.add(:email, :invalid) unless EMAIL_REGEXP.match(email)
	end
end
