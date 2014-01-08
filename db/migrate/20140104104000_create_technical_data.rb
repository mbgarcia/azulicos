class CreateTechnicalData < ActiveRecord::Migration
  def change
    create_table :technical_data do |t|
      t.boolean :right_foot, :default => false
      t.boolean :left_foot, :default => false
      t.string :position
      t.string :second_option
      t.datetime :admission
      t.string :age_group
      t.string :registry
      t.string :federation_registry

      t.belongs_to :athlete

      t.timestamps
    end
  end
end
