class SurveyController < ApplicationController
	skip_before_action :verify_authenticity_token

	def survey
		#    this method calculates which product is the best given the survey
		puts "message received"
		puts request.raw_post 
		# render :json => {:first => "thisvalue", :req => request.raw_post}

		@survey_products = SurveyHelper.process_survey(LightingProduct.all, params[:values])

		# create a new set of rows in the results table 

		render :json => @survey_products if !@survey_products.nil?

		render :json => {:Error => "No Survey"}

	end

