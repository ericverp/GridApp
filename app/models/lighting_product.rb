class LightingProduct < ApplicationRecord
  has_and_belongs_to_many :countries
  has_and_belongs_to_many :distributors
  belongs_to :manufacturer
end
