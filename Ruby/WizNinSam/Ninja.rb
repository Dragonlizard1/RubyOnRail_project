require_relative 'human'

class Ninja < Human
  attr_accessor :health, :strength, :intelligence,:stealth

  def initialize()
  	super
  	
  	
  	@stealth = 175
  
  end

  def steal(userhurt)
  	@health += 10
  	puts "Self heal #{@health}"
  	attack(userhurt)
  	self
  end

  def get_away()
  	@health -= 15
    puts "Health: #{@health}"
    self
  end

end

Ninja1 = Ninja.new
Ninja2 = Ninja.new
Ninja1.steal(Ninja2)
Ninja1.get_away

