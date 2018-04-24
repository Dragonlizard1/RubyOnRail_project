class Apple
  attr_accessor :age
  @age
  @height
  @applecount
  def initialize 
  	@height = 1
  	@applecount = 0
  	@age =0
   end

   def year_gone_by

   	@age += 1
   	p "tree has aged #{@age}"
   	@height = @height * 1.1
   	p "The height: #{@height}"
   	@applecount += 2 if ((10 > @age) and (@age > 3)) 
   	p "How many apples #{@applecount}"

   end

   def pick_apples
   	p "You have taken #{@applecount} apples off the tree"
   	@applecount = 0
   end
 


end