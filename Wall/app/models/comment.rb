class Comment < ActiveRecord::Base
  belongs_to :users, :foreign_key => "users_id", :class_name => "User"
  belongs_to :posts, :foreign_key => "posts_id", :class_name => "Post"
validates :c_content, presence: true, length: {minimum: 10}
end

