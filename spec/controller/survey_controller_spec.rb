require "spec_helper"
require 'rails_helper'


describe "SurveyController", :type => :controller do
  before(:each) do
    @controller = SurveyController.new
  end


  describe "POST survey" do
    it "has a 400 status code when there is no request body" do
      post :survey
      expect(response.status).to eq(400)
    end

    it "has a 400 status code when there is am incorrect request body " do
    	post :survey, :params => { :wrongvalues => [
    		{ :val => "someval"  }
    		] }

    	expect(response.status).to eq(400)
    end


    it "responds with a 200 code for requests with the right form" do
    	post :survey, :params => { :values => [
    		{ :val => "someval"  }
    		] }

    	expect(response.status).to eq(200)
    end 
  end
end