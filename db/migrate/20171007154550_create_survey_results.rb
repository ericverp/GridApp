class CreateSurveyResults < ActiveRecord::Migration[5.1]
  def change
    create_table :survey_results do |t|
      t.references :user, foreign_key: true
      t.references :lighting_products, foreign_key: true

      t.timestamps
    end
  end
end
