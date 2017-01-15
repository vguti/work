
require 'imdb'
require "pry"

class Search
		attr_accessor :titles, :rating 
	def initialize
		@titles = []
		@rating = {}
	end
	
	def movies_reader
		File.open("movies.txt", "r") do |f|
  		f.each_line do |line|
  
    		@titles.push(line.chomp) #Push the titles in an array
    	end
    	#puts @titles #Only for testing 
  	end
  end


	def get_rating
		@titles.each do |title|
			@rating[title] = Imdb::Search.new(title).movies[0].rating.round
		end
		#puts @rating #Only for testing
	end

	def print_rating
		10.downto(1) do |num|
			@rating.each do |movie, rate|
				print "|"
				if num <= rate.to_i
					print "#"
				else
					print " "
				end
			end
			puts "|"
		end
	end

	def print_output
		puts "\n"
		puts "==============MOVIE RATING============"
		puts ""
		print_rating
		print_index
		puts "\n====================================\n"
		print_movies
		puts "\n====================================\n"
	end

	def print_index
		puts "--------------"
		n=1
		@rating.each do |movie, rate|
			print "|#{n}"
			n +=1
		end
		print "|"
	end

	
	def print_movies(n=1)
		@rating.each do |movie, rate|
			puts "#{n}. #{movie}"
			n += 1
		end
	end
end



s = Search.new
s.movies_reader
s.get_rating
s.print_output



