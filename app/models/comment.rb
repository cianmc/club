class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :member
	belongs_to :coach
	belongs_to :fixture
end
