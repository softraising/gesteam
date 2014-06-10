class Team < ActiveRecord::Base
	belongs_to :admin
	has_many :members
end
