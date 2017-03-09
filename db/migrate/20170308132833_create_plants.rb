class CreatePlants < ActiveRecord::Migration[5.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.integer :days_to_harvest_from
      t.integer :days_to_harvest_to
      t.integer :distance_between_from
      t.integer :distance_between_to
    end
  end
end
