class Changetypeofdistrphone < ActiveRecord::Migration[5.1]
  def change
    change_column :distributors, :telephone, :string
  end
end
