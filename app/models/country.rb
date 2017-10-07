class Country < ApplicationRecord
	has_and_belongs_to_many :lighting_products

	 scope :filter_name, -> (name){Country.where(:name => name)}
end
