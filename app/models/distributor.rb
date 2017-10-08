class Distributor < ApplicationRecord
	has_and_belongs_to_many :lighting_products
	belongs_to :country
	belongs_to :manufacturer
end
