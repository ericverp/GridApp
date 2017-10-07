class AddRespondentReferenceToSurveyResult < ActiveRecord::Migration[5.1]
  def change
    add_reference :survey_results, :respondent, foreign_key: true
  end
end
