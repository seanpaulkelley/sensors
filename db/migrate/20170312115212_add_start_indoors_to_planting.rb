class AddStartIndoorsToPlanting < ActiveRecord::Migration[5.0]
  def change
    add_column :plantings, :start_indoors, :boolean
  end
end
