class Team < ActiveRecord::Base
	belongs_to :admin
	has_many :members

	validates_presence_of :name
end
