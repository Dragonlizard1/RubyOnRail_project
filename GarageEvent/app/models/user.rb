class User < ActiveRecord::Base
  has_secure_password
  has_many :events, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :joinings
  validates :f_name, :l_name, :city, :state, presence: true
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

	validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
	validates :password, presence: {on: :create}, length: {minimum: 8, allow_blank: true}
	#validates :password, length: {minimum: 8}, if: -> {password.present?}

end
