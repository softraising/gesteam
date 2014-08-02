require 'rails_helper'
require 'spec_helper'

describe Member do
	
	it 'has a valid factory' do
		FactoryGirl.create(:member).should be_valid
	end

	it 'is invalid without a name' do
		FactoryGirl.build(:member, name: nil).should_not be_valid
	end

	it 'is invalid without an email' do
		FactoryGirl.build(:member, email: nil).should be_valid
	end
end