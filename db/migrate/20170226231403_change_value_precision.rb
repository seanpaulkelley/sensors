class ChangeValuePrecision < ActiveRecord::Migration[5.0]
  def change
   change_column :readings, :value, :decimal, precision: 1
  end
end
