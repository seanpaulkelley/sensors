class CreateReadings < ActiveRecord::Migration[5.0]
  def change
    create_table :readings do |t|
      t.decimal :value, precision: 3, scale: 2
      t.string :sensor_type

      t.timestamps
    end
  end
end
