class LightingProduct < ApplicationRecord
  belongs_to :manufacturer
  has_many :countries
  has_many :distributors
end
