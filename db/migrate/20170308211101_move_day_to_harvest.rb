class MoveDayToHarvest < ActiveRecord::Migration[5.0]
  def change
    remove_column :plants, :days_to_harvest_from
    remove_column :plants, :days_to_harvest_to
    add_column :plantings, :days_to_harvest_from, :integer
    add_column :plantings, :days_to_harvest_to, :integer
  end
end
