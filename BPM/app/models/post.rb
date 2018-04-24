class Post < ActiveRecord::Base
  belongs_to :blog_id
  has_many :messaging
   validates :title,  presence: true, length: {minimum: 7}
   validates :content, presence: true
end
