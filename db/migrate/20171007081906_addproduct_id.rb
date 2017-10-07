class AddproductId < ActiveRecord::Migration[5.1]
  def change
    add_column :lighting_products, :product_id, :string
  end
end
