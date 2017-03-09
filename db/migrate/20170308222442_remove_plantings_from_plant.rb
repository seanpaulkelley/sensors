class RemovePlantingsFromPlant < ActiveRecord::Migration[5.0]
  def change
    remove_column :plants, :planting_id
  end
end
