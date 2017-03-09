class AddPlantingToPlant < ActiveRecord::Migration[5.0]
  def change
    add_reference :plants, :planting, foreign_key: true
  end
end
