class Dojo < ActiveRecord::Base
	has_many :ninjas
	 validates :city, :name, presence: true
	 validates :state, presence: true, length: {maximum: 2, minimum: 2}
end
