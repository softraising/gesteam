require 'faker'

FactoryGirl.define do
  factory :admin do
  	email {|n| "email#{n}@example.com"}
  	password {"12345678"}
  	password_confirmation{"12345678"}
  end
end