require "stringer/version"
module Stringer
    def self.spacify *strings
        string = ""
 
        strings.each do |s|
            if string == ""
            	string += s 
        	else
        		string += " " + s 
        	end

       
        end
        return string
    end

    def self.minify strings, max_len
    	@new_str1 = ""
    	@counter = 0
    	(0...max_len).each do |x|
    		if strings.length > x
    			@new_str1 += strings[x]
    		else
    			p @new_str1
    			return @new_str1
    		end
    		@counter += 1
    	end
    	@new_str1 += "..." if not (@counter > max_len)
    	p @new_str1
    	return @new_str1
    end

    def self.repacify string1, str_old, str_new
    	@pos = nil   	
    	string1 = string1.split(" ")  
    	@pos = string1.index(str_old)
    	string1[@pos]= str_new	if not @pos == nil
    
    	return string1.join(" ")
     	
    end

    def self.tokenize string1
    	return string1.split(" ")
  
    end

    def self.removify string1, off_string
    	 string1 = string1.split(" ")
  
    	string1.delete(off_string)

    	string1 =string1.join(" ")
    	return string1

    end

end