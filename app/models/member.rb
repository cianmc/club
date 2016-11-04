class Member < ActiveRecord::Base
	belongs_to :club2
	belongs_to :team
	has_many :comments
	
	validates :name, presence: true
	validates :dob, presence: true
	validates :phone_number, presence: true
	validates :membership , presence: true
end
