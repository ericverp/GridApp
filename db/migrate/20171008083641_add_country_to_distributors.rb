class AddCountryToDistributors < ActiveRecord::Migration[5.1]
  def change
    add_reference :distributors, :country, foreign_key: true
  end
end
