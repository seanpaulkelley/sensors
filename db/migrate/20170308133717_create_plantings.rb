class CreatePlantings < ActiveRecord::Migration[5.0]
  def change
    create_table :plantings do |t|
      t.references :plant, foreign_key: true
      t.string :type
      t.date :planting_date_begin
      t.date :planting_date_end
    end
  end
end
