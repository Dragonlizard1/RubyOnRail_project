a = [2,6,3,4,7,5,8,]


=begin

p "Print 1-255"
1.upto(255) {|i| p i}

p "Print odd numbers between 1-255"
1.upto(255) {|i| p i.odd}

p "Print Sum"
x = 0
0.upto(255) do |i| 
	x = x + i
	p "New number: #{i} Sum: #{x}"
end

p "Iterating through an array"
x = [1,3,5,7,9,13]
x.each {|i| p i}

p "Find Max"
x = [-3, -5, 25,-7]
p x.max


p "Get Average"
x = [2, 10, 3]
b = 0
count =0
x.each do |i|
	b = b + i
	count = count + 1
end
ave = b/count
p "Average: #{ave}"

p "Array with Odd Numbers"
y = 1.upto(255)
p y.select{|i| i.odd?}

p "Greater Than Y"
x =  [1, 3, 5, 7]
y =  2
count = 0
x.each {|i| count = count + 1 if i>y}
p count


p "Square the values"
x = [1, 5, 10, -2]

y = x.collect{|i| i*i}
p y 


p "Eliminate Negative Numbers"
x  = [1, 5, 10, -2]
x = x.collect do |i|
  if i <0
     0
   else
    i
   end

 end 
p x



p "Max, Min, and Average"
x = [1, 5, 10, -2]

sum = 0
count =0
x.each do |i|
	sum = sum + i
	count = count + 1
end
ave = sum/count
min = x.min
max = x.max
p "Average: #{ave}"
p "Minimum: #{min}" 
p "Maximum: #{max}" 

p "Shifting the Values in the Array"

x = [1, 5, 10, 7, -2]
x = x.rotate(1)
x[x.length-1] = 0
p x

=end 
p "Number to String"
x =  [-1, -3, 2]
x = x.collect do |i|
	if i < 0
		"Dojo"
	else 
		i
	end
end
p x
