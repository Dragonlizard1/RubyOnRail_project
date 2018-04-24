class User < ActiveRecord::Base
	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	has_many :messages, :dependent => :destroy
	has_many :posts, :dependent => :destroy
	has_many :owners
	has_many :comments, as: :imageable, :dependent => :destroy
	validates :first_name, :last_name, presence: true, length: {minimum: 2}
	
	validates :email_address, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
end
