require_relative 'human'
require_relative 'samurai'
require_relative 'ninja'


class Wizard < Human
  attr_accessor :health, :strength, :intelligence,:stealth

  def initialize()
  	super
  	@health = 50
  	
  	@intelligence = 25
  
  end

  def heal()
  	@health += 10
  	self
  end

  def fireball(userhurt)
  	userhurt.health -= 20
    puts "Health: #{userhurt.health}"
    self
  end

end

Wiz1 = Wizard.new
Wiz2 = Wizard.new
Ninja4 = Ninja.new 
Sam6 = Samurai.new
Sam6.attack(Wiz1)
puts Wiz1.health
Wiz1.attack(Wiz2)
Wiz1.fireball(Wiz2)

