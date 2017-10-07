class SurveyController < ApplicationController
	skip_before_action :verify_authenticity_token
	def survey
		#    this method calculates which product is the best given the survey
		puts "message received"
		puts request.raw_post 
		render :json => {:first => "thisvalue", :req => request.raw_post}


		survey_products = process_survey(LightingProduct.all, params[:values])
		 	

	end


end