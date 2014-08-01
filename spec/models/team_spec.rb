require 'rails_helper'
require 'spec_helper'

describe Team do

	it 'has a valid factory' do
		FactoryGirl.create(:team).should be_valid
	end

	it 'is invalid without a name' do
		FactoryGirl.build(:team, name: nil).should_not be_valid
	end

	it 'does not allow duplicate team names' do 
		FactoryGirl.create(:team, name: 'Death Star' )
		FactoryGirl.build(:team, name: 'Death Star').should_not be_valid
	end
end