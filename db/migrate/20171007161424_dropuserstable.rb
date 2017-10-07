class Dropuserstable < ActiveRecord::Migration[5.1]
  def change
  	remove_reference :survey_results, :user, index: true
  	drop_table :users
  end
end
