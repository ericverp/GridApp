class Addreferencestolightingproducts < ActiveRecord::Migration[5.1]
  def change
  	add_column :lighting_products, :country_id, :integer, foreign_key: true
  	add_column :lighting_products, :distributor_id, :integer, foreign_key: true
  	add_column :lighting_products, :manufacturer_id, :integer, foreign_key: true
  end
end
