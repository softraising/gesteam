class Team < ActiveRecord::Base
	belongs_to :admin
	has_many :members

	validates :name, :company, presence: true
end
