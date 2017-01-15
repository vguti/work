class Lexiconomitron 


	def eat_t(string)
		string.gsub(/[tT]/, '')	

	end

	def word_reverse array
		array.map do |word| 
      		word.reverse
      	end
    end

end



