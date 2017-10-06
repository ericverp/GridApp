class CreateLightingProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :lighting_products do |t|
      t.string :name
      t.boolean :mobile_charging
      t.decimal :price
      t.integer :num_of_lights
      t.integer :num_12v
      t.integer :num_5v
      t.float :daily_output
      t.float :runtime
      t.float :chargetime
      t.integer :system_lumens
      t.integer :product_class
      t.integer :lamp_type
      t.integer :max_output
      t.integer :lumens_per_watt
      t.string :product_url
      t.text :product_description

      t.timestamps
    end
  end
end
