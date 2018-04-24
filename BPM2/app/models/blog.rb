class Blog < ActiveRecord::Base
	has_many :posts, :dependent => :destroy
	has_many :owners
	has_many :comments, as: :imageable, :dependent => :destroy
	 validates :name, :description, presence: true
end
