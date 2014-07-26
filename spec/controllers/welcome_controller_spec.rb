require 'rails_helper'

describe WelcomeController do

  describe "Get #index" do

  	it "renders index template" do
  		get :index
  		expect(response).to render_template("index")
  	end

  	it "gets a HTTP status response 200" do
  		get :index
  		expect(response.status). to eq(300)
  		expect(response). to be_success
    end
  end
end