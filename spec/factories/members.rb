require 'faker'

FactoryGirl.define do
	factory :member do
		name {'Softraising'}
		email {|n| "email#{n}@example.com"}
	end
end