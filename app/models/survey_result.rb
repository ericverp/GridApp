class SurveyResult < ApplicationRecord
  belongs_to :respondent
  has_and_belongs_to_many :lighting_products	
end
