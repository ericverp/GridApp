class CreatetableDm < ActiveRecord::Migration[5.1]
  def change
    create_join_table :distributors, :manufacturers do |t|
    end
  end
end
