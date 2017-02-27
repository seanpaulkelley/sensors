class ChangeValuePrecision2 < ActiveRecord::Migration[5.0]
  def change
    change_column :readings, :value, :decimal, precision: 4, scale:1
  end
end
