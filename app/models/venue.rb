class Venue < ActiveRecord::Base
	has_many :fixtures, dependent: :destroy
	
	validates :address, presence: true
	geocoded_by :address 
	after_validation :geocode, :if=> :address_changed?
	
	
	def self.search(query)
		where("pitch LIKE?", "%#{query}%")
	end
	
end
