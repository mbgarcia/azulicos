class CreatePhysicalData < ActiveRecord::Migration
  def change
    create_table :physical_data do |t|
      t.decimal :heigth, precision: 6, scale: 2
      t.decimal :weight, precision: 6, scale: 2
      t.decimal :foot, precision: 6, scale: 2
      t.decimal :arm, precision: 6, scale: 2
      t.decimal :calf, precision: 6, scale: 2
      t.string :blood_group
      t.string :rh_factor
      t.string :biotype
      t.decimal :impulsion, precision: 6, scale: 2
      t.decimal :aerobic_endurance, precision: 6, scale: 2
      t.decimal :flexibility, precision: 6, scale: 2

      t.belongs_to :athlete

      t.timestamps
    end
  end
end
