class CreateDistributors < ActiveRecord::Migration[5.1]
  def change
    create_table :distributors do |t|
      t.string :name
      t.string :email
      t.text :address
      t.bigint :telephone

      t.timestamps
    end
  end
end
