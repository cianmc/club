class Club2 < ActiveRecord::Base
	has_many :members, dependent:  :destroy
	has_many :coaches, dependent:  :destroy
	
	validates :name, presence: true
	validates :address, presence: true
end
