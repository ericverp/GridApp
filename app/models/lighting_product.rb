class LightingProduct < ApplicationRecord
  belongs_to :manufacturer
  belongs_to :countries
  belongs_to :distributors
end
