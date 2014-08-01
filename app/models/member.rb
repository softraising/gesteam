class Member < ActiveRecord::Base
	belongs_to :team

	validates :name, :email, presence: true, uniqueness: true
end
