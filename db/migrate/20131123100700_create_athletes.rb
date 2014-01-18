class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      t.string :full_name
      t.string :nick_name
      t.string :url_photo
      t.date   :birth_day
      t.string :birth_city
      t.string :birth_state
      
      t.string :skin
      t.string :hair
      t.string :eyes
      t.string :religion

      t.string :birth_certificate
      t.string :book
      t.string :page
      t.string :county

      t.string :identification
      t.string :identification_agency
      t.string :cpf
      t.string :ctps
      t.string :voter_registry
      t.string :reservist_registry
      t.string :driver_license

      t.string :schooling
      t.string :college

      t.string :address
      t.string :district
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :phone_number

      t.string :father_name
      t.date   :father_birth_day
      t.string :father_profession
      t.string :father_phone_number
      t.string :father_civil_status
      t.string :father_religion
      t.string :mother_name
      t.date   :mother_birth_day
      t.string :mother_profession
      t.string :mother_phone_number
      t.string :mother_civil_status
      t.string :mother_religion
      t.string :responsible_name
      t.date   :responsible_birth_day
      t.string :responsible_profession

      t.string :email
      t.string :facebook
      t.string :twitter

      t.date    :admission_date
      t.boolean :is_student, :default => false

      t.string :observations

      t.timestamps
    end
  end
end
