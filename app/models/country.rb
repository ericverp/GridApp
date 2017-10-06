class Country < ApplicationRecord
	has_and_belongs_to_many :lighting_products
end
