a = [5,6,7,8,9,10,11,12]

puts ".at feature"
puts a.at(3)
puts "---------"

puts ".fetch feature"
puts a.fetch(6)
puts "---------"

puts ".delete feature"
puts a.delete(6)
puts "---------"

puts ".reverse feature"
puts a.reverse
puts "---------"

puts ".length feature"
puts a.length
puts "---------"

puts ".sort feature"
puts a.sort
puts "---------"


puts ".slice feature"
puts a.slice(3)
b = a.slice(3)
puts "--- b part"
puts b
puts "--- a part"
puts a
puts "---------"

a = [5,6,7,8,9,10,11,12]

puts ".shuffle feature"
puts a.shuffle
puts "---------"

puts ".join feature"
puts a.join("xx")
puts "---------"

puts ".insert feature"
puts a.insert(3, "wusup i'm insert", "insert again")
puts "---------"

a = [5,6,7,8,9,10,11,12]

puts ".values_at feature"
puts a.values_at(2,5,7)
puts "---------"
