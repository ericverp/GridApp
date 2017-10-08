class Country < ApplicationRecord
	has_and_belongs_to_many :lighting_products
	has_many :distributors

	scope :filter_name, -> (name){Country.where('lower(name) = lower(?)', name)}
end
