require_relative 'mammal'
class Pet < Mammal



  	def initialize()
  		super
		
	end

	def pet()
		@health = @health + 5
		
		self
	end

	def walk()
		@health = @health - 1
	
		self
	end

	def run()
		@health = @health - 10
		self
	end

	def display()
		display_health
		self
	end
end


testing = Pet.new
testing.walk.walk.walk.run.run.pet.display
