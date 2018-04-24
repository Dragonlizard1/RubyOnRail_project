class Event < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :joinings
   validate :date_not_past


  def date_not_past
    if self.datesetup < Date.today
      errors.add(:Date, "can't be in the past")
    end
  end
end
