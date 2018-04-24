require_relative 'mammal'
class Lion < Mammal

  	def initialize()
  		super
		
	end

	def fly()
		@health = @health - 10
		
		self
	end

	def attack_town()
		@health = @health - 50
	
		self
	end

	def eat_humans()
		@health = @health + 20
		self
	end

	def display()
		puts "This is Lion"
		display_health
		self
	end
end


testing = Lion.new
testing.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display
