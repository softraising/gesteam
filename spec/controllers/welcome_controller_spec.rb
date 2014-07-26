require 'rails_helper'

describe WelcomeController do

  describe "Get #index" do

  	it "renders index template" do
  		get :index
  		expect(response).to render_template("index")
  	end
  end
end