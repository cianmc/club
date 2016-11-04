class User < ActiveRecord::Base
	has_many :comments
	has_secure_password
	validates_uniqueness_of :email, format:{with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/}
		
end
