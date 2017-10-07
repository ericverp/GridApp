class SurveyController < ApplicationController
	skip_before_action :verify_authenticity_token

	def survey
		#    this method calculates which product is the best given the survey
		@survey_products = SurveyHelper.process_survey(LightingProduct.all, params[:values])
		# create a new set of rows in the results table 

		if(!@survey_products.nil?)

			# create a survey result entry 

			render :json => @survey_products if !@survey_products.nil?
		else
			render :status => 400, :json => {:error => "Bad Request"}
		end


	end
end