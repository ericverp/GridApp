namespace :products do 

	desc "Load Products"
	task :load => :environment do 
	  	
		require json
	  	puts 'Start Ingest of EventBrite data'
	  	ingest_events = File.new("C:\\Sites\\freebeer\\freebeerbackend\\lib\\tasks\\results.json",'r')
	  	ingest_locations = File.new("C:\\Sites\\freebeer\\freebeerbackend\\lib\\tasks\\events.json",'r')


	  	products =  JSON.parse(ingest_locations.read())
	  	puts 'Mapping Events'

	  	mapped_products = products.map do|item| 
	  		product = {
	  			:name => item['name']['text'],
	  			:mobile_charging => item['end']['local'],
	  			:price => item['start']['local'],
	  			:description => item['description']['text'],
	  			:num_of_lights => item['url'],
	  			:num_12v => item['venue_id'],
	  			:num_5v => item['venue_id'],
	  			:daily_output => item['venue_id'],
	  			:runtime => item['venue_id'],
	  			:chargetime => item['venue_id'],
	  			:num_12v => item['venue_id'],
	  			:num_12v => item['venue_id'],

	  			}
	  		return product
	  	end





	  mapped_products.each do|product|
	  		Product.create(product)
	  end

	end
end 