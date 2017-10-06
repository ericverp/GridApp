class CreateJoinTableLightingProductDistributor < ActiveRecord::Migration[5.1]
  def change
    create_join_table :lighting_products, :distributors do |t|
      # t.index [:lighting_product_id, :distributor_id]
      # t.index [:distributor_id, :lighting_product_id]
    end
  end
end
