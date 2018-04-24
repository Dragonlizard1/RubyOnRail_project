class User < ActiveRecord::Base
	has_many :friends, :through => :friendships
	has_many :friendships, :foreign_key => "user_id", 
      :class_name => "Friendship"

	
end
