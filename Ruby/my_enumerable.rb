module MyEnumerable
  def my_each
    for i in 0...self.length
      puts self[i]
    end
  end

  def my_each_multi(num1)
    for i in 0...self.length
      answer = self[i] * num1 
      puts answer
    end
  end
end
class Array
   include MyEnumerable
end
puts "indiviual print"
[1,2,3,4].my_each # { |i| puts i } # => 1 2 3 4
puts "Multiple 10"
[1,2,3,4].my_each_multi(10)  #{ |i| puts i * 10 } # => 10 20 30 40
