require 'rails_helper'
require 'spec_helper'

describe Admin do

	it 'has a valid factory' do
		FactoryGirl.create(:admin).should be_valid
	end

	it 'is invalid without an email account' do
		FactoryGirl.build(:admin, email: nil).should_not be_valid
	end

	it 'is invalid without a password' do
		FactoryGirl.build(:admin, password: nil).should_not be_valid
	end

	it 'does not allow duplicate emails' do
		#admin = FactoryGirl.create(:admin)
		FactoryGirl.create(:admin, email: "johndoe@example.com")
		FactoryGirl.build(:admin, email: "johndoe@example.com").should_not be_valid
	end
end