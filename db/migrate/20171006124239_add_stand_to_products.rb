class AddStandToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :lighting_products, :has_stand, :boolean
  end
end
