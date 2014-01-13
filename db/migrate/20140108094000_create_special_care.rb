class CreateSpecialCare < ActiveRecord::Migration
  def change
    create_table :special_cares do |t|
      t.string :name
      t.string :relationship
      t.string :phones
      t.boolean :health_plan
      t.string :health_plan_name
      t.string :remedies
      t.string :prohibited_drugs

      t.belongs_to :athlete

      t.timestamps
    end
  end
end
