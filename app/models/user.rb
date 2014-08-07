class User < ActiveRecord::Base
	validates( :name, presence: true, length: { maximum: 50 } )
	validates( :email, presence: true )
	
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validate( :email, presence: true, format: { with: VALID_EMAIL_REGEX } )
end
