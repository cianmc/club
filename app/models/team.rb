class Team < ActiveRecord::Base
	belongs_to :fixture
	has_many :members
	belongs_to :coach
	
	validates :name, presence: true
	validates :name, uniqueness: true
	
	end
