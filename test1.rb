class MathDojo
	attr_accessor :sum
	def initialize()
		@sum = 0
	end

	def add *num1
		
		num1.each do |i|
			if i.kind_of?(Array)
				i.each do |x|
				self.sum = self.sum + x
				end
			else
				self.sum = self.sum + i
			end
		end
		
		self
	end

	def subtract *num1
		num1.each do |i|
			if i.kind_of?(Array)
				i.each do |x|
				self.sum = self.sum - x
				end
			else
				self.sum = self.sum - i
			end
		end
		self
	end

	def result()
		puts "Sum: #{self.sum}"
		self
	end


end
puts "Challenge 1"
challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4

puts "---"
puts "Challenge2"
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15
