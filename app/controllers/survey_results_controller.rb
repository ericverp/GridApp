class SurveyResultsController < ApplicationController
  def show
  	@survey_results = SurveyResult.find_by_id(params[:id]) if !params[:id].nil?

  	if @survey_results.nil?
  		flash[:error] = "Survey Results Not Found"
  		redirect_to root_path
  	end

  end
end
