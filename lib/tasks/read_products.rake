namespace :products do

	desc "Load Products"
	task :load => :environment do

		require 'json'
	  	puts 'Start Ingest of Products data'

	  	ingest_locations = File.new(File.join(Dir.getwd,'lib','tasks','products.json'),'r')

	  	products =  JSON.parse(ingest_locations.read())
	  	puts 'Mapping Events'
			manufacturer = Manufacturer.create!(name: "Lighting Products")

	  	mapped_products = products.map do|item|
	  		product = {
	  			:name => item['Product'],
	  			:mobile_charging => item['Moblie charging'],
	  			:price => item['Price'],
	  			:num_of_lights => item['Light Points in Product'],
	  			:num_12v => item['12V power outlets'],
	  			:num_5v => item['5V USB ports'],
	  			:daily_output => item['Avaliable Daily Electrical Energy (Whday)'],
	  			:runtime => item['Run time on full battery (hours)'],
	  			:battery_capacity => item['Battery Capacity (mAmp-hours) (testing maybe needed)'],
					:system_lumens => item['Total light output (lumens)'],
				  :product_class => item['Product Class'],
				  :lamp_type => item['Lamp Type'],
				  :max_output => item['PV maximum power point (Watts)'],
					#:manufacturer => item['Manufacturer'],
					:manufacturer => manufacturer,
				  :product_url => item['Link to product page on manufacturer website'],
   				:product_description => item['Description of light points'],
				  #:countries_id => item[''],
				  #:distributors_id => item[''],
				  :has_stand => item['Stand']

	  			}
	  		#return product
	  	end

		puts "Products Mapped"



	  mapped_products.each do|product|
	  		LightingProduct.create!(product)
	  end

	  puts "Success, products created!!"

	end
end