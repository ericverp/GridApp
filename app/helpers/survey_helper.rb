module SurveyHelper

	def self.process_survey(items,survey)


		return if survey.nil?

		these_items = items

		# find customer country

		country = get_survey_value(survey,"Country")

		
		these_items = these_items.select{|item| item.countries.filter_name(country).any?}

		
		# how many lights will you need

		lights_answer = get_survey_value(survey,"Number of lights")

		
		if(!lights_answer.nil?)
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
		end

		# mobile phone charging
		mobile_answer = get_survey_value(survey,'mobile charging required')			

		if(!mobile_answer.nil?)
			case mobile_answer
				when "yes"
					these_items = these_items.select{|item| item[:num_5v] >= 1}
				when "no"
					these_items = these_items.select{|item| item[:num_5v].eql? 0}
				else
					puts "cannot parse answer #{mobile_answer}"
			end
		end

		# how long will lights be used for

		# Lighting duration
		lighting_duration = get_survey_value(survey,'Lighting duration')

		# 0 - 5, 6-8, 9-12, 12+
		if(!lighting_duration.nil?)
			case lighting_duration
				when "a"
					these_items = these_items.select{|item| item[:runtime] <= 5}
				when "b"
					these_items = these_items.select{|item| item[:runtime].between?(6..8)}
				when "c"
					these_items = these_items.select{|item| item[:runtime].between?(9..12)}
				when "d"
					these_items = these_items.select{|item| item[:runtime] >  13}	
				else
					puts "cannot parse answer #{lighting_durangtion}"
			end
		end
		return these_items

	end


	private
	def self.get_survey_value(survey, val)
		prospect_val = survey.select{|item|  item[:Label].eql? val}

		return nil if prospect_val.nil? or prospect_val.empty?
		prospect_val.first[:value].downcase
	end
end
