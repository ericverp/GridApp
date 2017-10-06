class CreateJoinTableLightingProductCountry < ActiveRecord::Migration[5.1]
  def change
    create_join_table :lighting_products, :countries do |t|
      # t.index [:lighting_product_id, :country_id]
      # t.index [:country_id, :lighting_product_id]
    end
  end
end
