require_relative 'human'
	
class Samurai < Human
  @@samurai_counter =0
  attr_accessor :health, :strength, :intelligence,:stealth

  def initialize()
  	super
  	
  	@@samurai_counter += 1
  	@health = 200
  
  end

  def death_blow(userhurt)
  	userhurt.health = 0
  	puts "Death Blow #{userhurt.health}"
  	
  	self
  end

  def meditate()
  	@health = 200
    puts "Full Heal: #{@health}"
    self
  end

  def how_many()
  	
    puts "How Many Sumarai: #{@@samurai_counter}"
    self
  end

end

Sam1 = Samurai.new
Sam2 = Samurai.new
Sam1.death_blow(Sam2)
Sam2.meditate.how_many

