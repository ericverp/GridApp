class SurveyResult < ApplicationRecord
  belongs_to :user
  has_many :lighting_products
end
