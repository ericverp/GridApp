require 'rails_helper'

describe "SurveyResult", :type => :model do
  describe "Create Result" do
  	it "should create a result with a user" do

  		user = Respondent.create(contact_name: "first name", phone: "0123131231")
  		manufacturer = Manufacturer.create(name: "aaa")
  		product = LightingProduct.create(name: "first", manufacturer: manufacturer)
  		result = SurveyResult.create(respondent: user, lighting_products: [product] )	
  		expect(result).to_not be_nil

  		expect(result.lighting_products[0]).to eq(product)
  		expect(result.respondent).to eq(user)
  	end
  end 
end
