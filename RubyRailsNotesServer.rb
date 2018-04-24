rails console //inside the project folder

.create(keyname: "")
.save
.all
same array functionality in RUBY
.find(2) //retrieve by ID number
.find_by(keyname: "") //retrieve by key. Find first one match only
.where(keyname:"") find all matching
.select(:keyname, :keyname)  // retrieve the specific key field info only

//update
.find()  // find id number
edit the info
.save   //to save it

or
//update 2

.find()
.update() // multiple key item


.delete  //  no callback
.destroy  // will have callback use

//order --------
Dojo.all.order("created_at DESC")

//  .limit  -------
Dojo.all.limit(1)   // Just return 1 item find first.


//Validation
class User < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, presence: true, length: { in: 2..20 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
end

:length - validates the length of an attribute's value
:minimum, :maximum, :in, :is
:numericality - validates whether an attribute is a numeric value
:odd, :even, and many others
:presence - validates that the specified attributes are not empty
:uniqueness - validates whether the value is unique in the corresponding database table. NOTE: always create a unique index in the database too.
:confirmation - use this when you have two text fields that should receive exactly the same content; assumes the second field name has "_confirmation" appended
validates_associated - use this when your model has associations with other models and they also need to be validated
:acceptance - validate whether a checkbox was checked when a form was submitted (usually for 'terms and conditions')
also, get familiar with :message and :on
'

a = %w{ a b c d e f }
a.select { |v| v =~ /[aeiou]/ }  #=> ["a", "e"]


//Users is the table to add to
rails g migration Add___ColumnToUsers  key:type  //email:string
// can modify the file at. /projectfolder/db/migrate/filename.

rake db:rollback   // to rollback the changes. or step=2   go back twice.

rake db:migrate:status   // to check the status of migration

.map    //iterator

//----- reference  one relationship
class User < ActiveRecord::Base
  has_one :address
end

class Address < ActiveRecord::Base
  belongs_to :user
end

//---- reference to many relationship
class Message < ActiveRecord::Base
  belongs_to :user
end

class User < ActiveRecord::Base
  has_many :messages
end

// ----- reference to many to mnay relationship
class Student < ActiveRecord::Base
  has_many :signups
  has_many :courses, through: :signups
end

class Signup < ActiveRecord::Base
  belongs_to :student
  belongs_to :course
end

class Course < ActiveRecord::Base
  has_many :signups
  has_many :students, through: :signups
end

gem  good for validation and authentication special package
Devise


