#namespace :products do

	#desc "Load Products"
	#task :load => :environment do
	  	
	  	puts 'requiring json'
			require 'json'
	  	puts 'Start Ingest of Products data'
	  	#ingest_events = File.new("C:\\Sites\\freebeer\\freebeerbackend\\lib\\tasks\\results.json",'r')
	  	#ingest_locations = File.new("C:\\Sites\\freebeer\\freebeerbackend\\lib\\tasks\\events.json",'r')
	  	#ingest_events = File.new("../../data/products.json",'r')
	  	ingest_locations = File.new("/Users/valerio/Desktop/GridApp/data/products.json",'r')

	  	products =  JSON.parse(ingest_locations.read())
	  	puts 'Mapping Events'
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
				  :manufacturer_id => item['Manufacturer'],
				  :product_url => item['Link to product page on manufacturer website'],
   				:product_description => item['Description of light points'],
				  #:countries_id => item[''],
				  #:distributors_id => item[''],
				  #:created_at => item[''],
				  #:updated_at => item[''],
				  :has_stand => item['Stand']

	  			}
	  		#return product
	  	end

		puts "statement here"



	  #mapped_products.each do|product|
	  #		Product.create(product)
	  #end

#	end
#end