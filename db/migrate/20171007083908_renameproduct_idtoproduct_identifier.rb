class RenameproductIdtoproductIdentifier < ActiveRecord::Migration[5.1]
  def change
    rename_column :lighting_products, :product_id, :product_identifier
  end
end
