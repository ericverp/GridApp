class AddManufacturerToDistributor < ActiveRecord::Migration[5.1]
  def change
    add_reference :distributors, :manufacturer, foreign_key: true
  end
end
