class Secret < ActiveRecord::Base
  belongs_to :user
  validates :content, presence: true
  has_many :likes
  has_many :users, through: :likes, source: :user
end
