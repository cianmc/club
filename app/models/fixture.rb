class Fixture < ActiveRecord::Base
	belongs_to :venue
	has_many :teams 
	has_many :comments
	
end
