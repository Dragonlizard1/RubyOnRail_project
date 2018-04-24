class Post < ActiveRecord::Base
  belongs_to :user
  validates :p_content, presence: true, length: {minimum: 10}
end
