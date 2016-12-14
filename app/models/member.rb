class Member < ActiveRecord::Base
	belongs_to :club2
	belongs_to :team
	has_many :comments
	
	validates :name, presence: true
	validates :dob, presence: true
	validates :phone_number, presence: true
	validates_length_of :phone_number, :maximum => 10
	#validates :email, presence: true, format: {with:/\A([^@\s]+)@((?:{-a-z0-9]+\.)+[a-z]{2,})\Z/}
	has_secure_password
	validates :membership , presence: true


end
