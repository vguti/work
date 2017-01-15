
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
  
    		@titles.push(line.chomp)
    	end
    	puts @titles
  	end
  end


	def get_rating
		@titles.each do |title|
			@rating[title] = Imdb::Search.new(title).movies[0].rating
		end
		puts @rating
	end
end

s = Search.new
s.movies_reader
s.get_rating