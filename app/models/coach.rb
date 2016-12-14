class Coach < ActiveRecord::Base
	has_one :team
	belongs_to :club2
	has_many :comments
	
	validates :name, presence: true
	validates :email, presence: true
	validates :email, uniqueness: true


end
