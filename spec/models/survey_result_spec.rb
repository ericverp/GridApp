require 'rails_helper'

describe "SurveyResult", :type => :model do
  describe "Create Result" do
  	it "should create a result with a user"

  		user = User.create(contact_name: "first name", phone: "0123131231")
  		manufacturer = Manufacturer.create(name: "aaa")
  		product = LigtingProduct.create(name: "first", manufacturer: manufacturer)	
  		expect(product).to_not be_nil
  end 
end
