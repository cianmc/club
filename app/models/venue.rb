class Venue < ActiveRecord::Base
	has_many :fixtures, dependent: :destroy
	
	validates :address, presence: true
	
end
