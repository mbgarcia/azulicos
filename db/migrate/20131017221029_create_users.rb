class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :full_name
      t.datetime :day_of_birth
      t.string :address
      t.string :district
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :identification
      t.string :identification_agency
      t.string :cpf
      t.string :password
      t.string :email
      t.string :facebook
      t.string :twitter
      t.string :profession
      t.string :registry
      t.datetime :admission_date

      t.timestamps
    end
  end
end
