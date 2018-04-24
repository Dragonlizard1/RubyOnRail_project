x =  [3,5,1,2,7,9,8,13,25,32]
y =  ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]

def greater10 (arr)

	sum = 0
	arr.each {|i| sum = sum + i}
	p sum

	return arr.select {|i| i if i >10} 
end

def nameshuffle(arr)
	arr = arr.shuffle
	arr.each {|i| p i}

	return arr.select {|i| i if i.length > 5}
end

def alphabet1()
	vowellist = ["a","e","i","o","u"]
	arr1 = [*("a".."z")]
	arr1 = arr1.shuffle
	itvowel = false
	vowellist.each do |i|
		if i == arr1.first	
			p "First letter is a vowel: #{arr1.first}"
			
			itvowel = true
		end
	end
	
	p "First letter is: #{arr1.first}" if itvowel == false
	

	p "Last letter: #{arr1.last}"

end

def randomNum()
	arr1 = Array.new(10) {rand(55..100)}
	p arr1
	arr1 = arr1.sort
	p arr1
	p "Min: #{arr1.min}"
	p "Max: #{arr1.max}"
end

def randomStr()
	arr1 = Array.new(10) {
		(Array.new(5) {(65+rand(26)).chr}).join
	}
	p arr1
	
end

p "greater 10"
p greater10(x)
p "-----"
p "nameshuffle"
p nameshuffle(y)
p "-----"
p "Alphabet"
alphabet1()
p "-----"
p "randomNum"
randomNum()
p "-----"
p "random String"
randomStr()

