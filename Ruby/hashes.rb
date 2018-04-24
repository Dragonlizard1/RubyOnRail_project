h = {:first_name => "Coding", :last_name => "Dojo"} 
puts h
h.delete(:last_name)
 puts h 
 # => {:first_name => "Coding"}

 p "has Key" , h.has_key?(:last_name)
 p "has Value", h.has_value?("Coding")
  p "has Value2", h.has_value?("Dojo")

  h.delete(:first_name)

 p "is empty:", h.empty?