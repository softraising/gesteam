require 'rails_helper'
require 'spec_helper'

describe Admin do

	it 'has a valid factory' do
		FactoryGirl.create(:admin).should be_valid
	end

	it 'is invalid without an email account' do
		FactoryGirl.build(:admin, email: nil).should be_valid
	end
end