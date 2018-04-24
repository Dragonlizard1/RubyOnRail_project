//---run ruby 
outsystems dial a number on iphone
UIApplication.sharedApplication().openURL(url: NSURL(string:"tel:0000000000"))
///android app
String url = "tel:1234";
Intent intent = new Intent(Intent.ACTION_CALL, Uri.parse(url));

<uses-permission android:name="android.permission.CALL_PHONE"></uses-permission>
//
html
navigator.app.loadUrl('tel:+919999999999', { openExternal:true });
//
// when to restart
vagrant halt
vagrant up
// then enter to shell.

vagrant ssh    // to enter shell it will be empty in ls command
cd /vagrant   // must enter this to get the correct directory.


type  irb   ///  to intiate ruby

//-------------------
Rail setup

1. rails new [project_name]

2. cd project_name
3. rails g model  ....   //to create the model * a table file
example: rails g model User first_name:string last_name:string email:string password:string age:integer

// need to migrate file for the database
4. $ rake db:migrate   //must migrate to activate the table

//console access to activate in terminal
5. rails console

// application
add to gem files
5.  gem 'rails-footnotes', '>= 4.0.0', '<5'
then:  bundle install		//install package
then:  rails generate rails_footnotes:install  // generate the footnote data

this will give debuggin notes.

//  to install the file
5.  rails generate rails_footnotes:install

routes file location
app_name/config/routes.rb

6.  rails g controller <ControllerName> <methods space separated>
example:  rails g controller Comments index new edit
//-------------run server
7. rails s -b 0.0.0.0       // to run server


// rails project folder in environment in development.rb to auto update changes and refresh html
config.reload_classes_only_on_change = false

// to run the file for rspec testing
gem install rspec
1. rails new <project folder> -T    // to take testing data out

2. Gemfile:
add//
group :development, :test do
  gem 'rspec-rails'
  gem"factory_bot_rails"
  gem 'capybara'
end

3. terminal run command//
dojo$ bundle install
dojo$ rails generate rspec:install


4. rspec project_spec.rb

//------------------
PostGres 
is the fastest database
and great with dates.   step 1-3 is 1 time use to do unless vagrant get destroyed
1. sudo su postgres -c psql
2. =# create role vagrant SUPERUSER LOGIN;
3. =# \q
4. rails new <names> --database=postgresql -T
5. rake db:create
6. rails db  --- optional

gemfile
gem 'pg', '~> 0.18.4'  // current version
//------------------
setup FactoryBot
inside rails helper....
config.include FactoryBot::Syntax::Methods

//--------------
11
user.errors.full_messages


# this line will create 7 routes from the example below
resource :products
---------------
get "products" => "products#index"
get "products/new" => "products#new"
post "products" => "products#create"
get "products/:id" => "products#show"
get "products/:id/edit" => "products#edit"
patch "products/:id" => "products#update"
delete "products/:id" => "products#destroy"


HTTP_VERB "<relative URL>" => "controller#method"
///----------------
Token for Form
//token-------------
<input type="hidden" name="authenticity_token" value="<%= form_authenticity_token %>">

//-----
session

session[:id] = params[:id]
session[:id] = nil
session.clear
//-----

special CRUD setup for USER
rails g scaffold User key:type
//-------types
:binary
:boolean
:date
:datetime
:decimal
:float
:integer
:primary_key
:string
:text
:time
:timestamp

query
Player.joins(:team).all.select('players.id, players.name as player_name, teams.name as team_name')

 redirect_to "link"
 render "link"



need // gems check in code
gem 'gem_name', '>= 1.3.0'

cd project_name  // inside project name
bundle install

add gem 'hirb'   to a projectname/gemfile and bundle install after
in RAIL console  type: Hirb.enable
//enable determine the table size.
datetime structure
datetime.now.strftime("")
user1.created_at.strftime("%m/%d/%Y  %a, %b %e at %l:%M") 
//example datetime html format
<p><%=DateTime.current.strftime("%m/%d/%Y")%></p>  //number only/
	<p><%=DateTime.current.strftime("%a, %b %e at %l:%M")+ DateTime.current.strftime("%p").downcase%></p>
//(dayofweek month date at hour min)

rake time:zones:all
use DateTime.current.strftime
config.time_zone = "Central Time (US & Canada)"
Central Time (US & Canada)

bcrypt
simple_form
bootstrap-sass
carrierwave
capybara  // to upload file
rspec


Yakihiro Matsumato invented Ruby on Rail
Rails is framework,   another framework  Sinatra

Vagrant -   // Virtual Machine
https://www.vagrantup.com/downloads.html

VirtualBox -   //Virtual Machine
https://www.virtualbox.org/wiki/Downloads

TDD   //Test Driven Development

//github
codingdojodallas/ruby_april_2018


vagrant destroy   // to delete the virtual box and
vagrant up    // create or start the virtual box
vagrant init // to init vagrantfile
vagrant up --provision // start machine with provision
vagrant ssh // start with ssh session
vagrant halt // stop the machine
vagrant box add  // add a vagrant box image on computer
vagrant box list  // list of all vagrant boxes on computer

case
if (true) {}
elsif
else
when  if just another else if type or move like switch case statement


// unless is   not equal to
unless nil
unless false   are negative condition
must put 
end // each if statement

// for loop
for i in 0..5 
  puts "Value of local variable is #{i}" 
  break if i == 2
end


// while looop
while i < num do
  puts "Inside the loop i = #{i}"
  i += 1  
  break if i == 2  
end


next  is the // version of continue.
break   // to break for loop

//function
def hello (name1 = "set default", name2)
end

parenthesis is not required. for function

puts return nil. no return need for function
last statement is executed as return.
return can be used to function to end early.


// get a type information on print.
p (outputs)
puts outputs.inspect
end

the ! at the end will make it set and destructive
without it not destructive and original is not alter.
the .capitalize!

.select  //just to display the tiem onli


calling 
{a : 1}

//ruby call of key in dictionary.
name[:a]

#{x}  for string interpolation
otherwise
print  "\n"   at the end to print one line at a time

to put things in array the * is important
arr = [*("a".."z")]

// for looping
  for i in 0...self.length
      puts self[i]
    end

//class setup

class User
  attr_accessor :first_name, :last_name
  def initialize(f_name, l_name)
    @first_name = f_name
    @last_name = l_name
  end
end

Instance Variable
Begins with @ and are available to instances of the class.

Class Variable
Begins with @@ and are available to the class itself

Global Variable
Begins with $. Avoid using this, if possible, since it is available everywhere.

//is type comparison
.kind_of?(Array)

public - methods that can be called within the class, subclasses and instances without restriction.
protected - methods that can only be called within the class and subclasses either explicitly or implicitly
private - methods that can only be called within the class and subclasses implicitly

each_index  give the index value pos in array..
each        give the vale in array.

attr_getter   to get the value only
attr_setter   to set the value only
attr_accessor to set and get value
class.ancestors   give the class name attribute

//the file retrieve
require_relative 'mammal'
end
end

EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
end

EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
end

// meaning
ReST - Representational state transfer





