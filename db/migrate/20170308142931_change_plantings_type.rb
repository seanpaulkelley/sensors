class ChangePlantingsType < ActiveRecord::Migration[5.0]
  def change
    rename_column :plantings, :type, :planting_type
  end
end
