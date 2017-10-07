class CreateRespondents < ActiveRecord::Migration[5.1]
  def change
    create_table :respondents do |t|
      t.string :contact_name
      t.string :phone

      t.timestamps
    end
  end
end
