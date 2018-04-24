class User < ActiveRecord::Base
	has_many :posts
	has_many :comments
	validates :name, uniqueness: { case_sensitive: false }, presence: true, length:{minimum: 5}

end
