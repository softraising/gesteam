require 'rails_helper'
require 'spec_helper'

describe Member do
	
	it 'has a valid factory' do
		FactoryGirl.create(:member).should_not be_valid
	end
end