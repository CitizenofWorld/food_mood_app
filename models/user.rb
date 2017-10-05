class User < ActiveRecord::Base

	has_secure_password #adds two methods to user
end