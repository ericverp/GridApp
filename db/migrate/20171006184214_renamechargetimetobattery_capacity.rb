class RenamechargetimetobatteryCapacity < ActiveRecord::Migration[5.1]
  def change
    rename_column :lighting_products, :chargetime, :battery_capacity
    remove_column :lighting_products, :lumens_per_watt
  end
end
