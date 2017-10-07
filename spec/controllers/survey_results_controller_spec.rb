require 'rails_helper'

RSpec.describe SurveyResultsController, type: :controller do

  describe "GET #show" do
    it "returns http redirect if no params" do
      get :show
      expect(response).to have_http_status(:redirect)
    end
  end

end
