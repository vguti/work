# UNFINISHED

require 'ruby-dictionary'

class WordChain
  def initialize(dictionary, starting_word, ending_word)
        @dictionary = dictionary
        @starting_word = starting_word
        @ending_word = ending_word
  end
  def find_chain
  		i = 0
		if @dictionary.exists?(@starting_word)
			first_word = @starting_word.split("") 
			last_word = @ending_word.split("")
			first_word.each_with_index do |item, i|
			    first_word[i] == last_word[i]
			end
			puts "It Works"
		else
			second_word.each_with_index do |item, i|
			    first_word[i] == last_word[i]
			end
			puts "We are in the second statement"
        end
   end

end

dictionary = Dictionary.from_file("/usr/share/dict/words")
my_chain = WordChain.new(dictionary, "cat", "dog")
my_chain.find_chain