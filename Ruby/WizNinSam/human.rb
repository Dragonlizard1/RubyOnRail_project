class Human
  attr_accessor :health, :strength, :intelligence,:stealth

  def initialize()
  	@health = 100
  	@strength = 3
  	@intelligence = 3
  	@stealth = 3
  end

  def attack(userhurt)
  	userhurt.health -= 5
    puts "Health: #{userhurt.health}"
    self
  end

end



