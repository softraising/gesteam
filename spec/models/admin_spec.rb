require 'rails_helper'
require 'spec_helper'

describe Admin do

	it 'has a valid factory' do
		FactoryGirl.create(:admin).should be_valid
	end
end