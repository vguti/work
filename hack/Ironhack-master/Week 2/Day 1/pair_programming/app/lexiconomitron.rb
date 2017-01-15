class Lexiconomitron 
   def eat_t(str)
        my_array = str.split('').map do |element|
    	if element=="t" ||  element=="T"
    	 ""
    	else 
    		element
    	end
    end

    def shazam
      my_array.reverse
    end
    my_array.join.to_s
   end
end