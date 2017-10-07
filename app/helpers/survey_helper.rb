module SurveyHelper

	def self.process_survey(items,survey)


		return if survey.nil?

		these_items = items

		# find customer country

		country = survey.select{|item| item[:Label].eql? "Country"}.first[:value].downcase

		
		these_items = these_items.select{|item| item.countries.filter_name(country).any?}

		
		# how many lights will you need

		lights_answer = survey.select{|item| item[:Label].eql? "Number of lights"}.first[:value].downcase

		case lights_answer
			when "a"
				these_items = these_items.select{|item| item[:num_of_lights].eql? 1}
			when "b"
				these_items = these_items.select{|item| item[:num_of_lights].eql? 2}
			when "c"
				these_items = these_items.select{|item| item[:num_of_lights].eql? 3}
			when "d"
				these_items = these_items.select{|item| item[:num_of_lights] > 3}
			else
				puts "no match found for #{lights_answer}"
		end

		# mobile phone charging
		mobile_answer = survey.select{|item|  item[:Label].eql? 'mobile charging required'}.first[:value].downcase			

		case mobile_answer
			when "yes"
				these_items = these_items.select{|item| item[:num_5v] >= 1}
			when "no"
				these_items = these_items.select{|item| item[:num_5v].eql? 0}
			else
				puts "cannot parse answer #{mobile_answer}"
		end

		return these_items

	end
end
