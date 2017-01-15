require 'imdb'
require 'pry'

=begin
	movies array

	1. Ghostbusters
	2. Die Hard
	3. The Godfather
	4. Home alone
	5. Star trek, the new generation
	6. The night of the living dead
	7. Titanic
=end
=begin
	Search the movie => Imdb::Search
	Pick the id of the movie
	Load the movie => Imdb::Movie
	Check if it has rating
=end

class Movie
	def initialize
		@movies = ["Ghostbusters",
				"Die Hard", "The Godfather", "Home alone", "Star trek, the new generation", "The night of the living dead", "Titanic"]	
		@rating_movies = {}
	end

	def search_movie
		@movies.each do |movie|
			search = Imdb::Search.new(movie)
			rating = nil
			i = 0
			while !rating
				rating = search.movies[i].rating
				i += 1
			end	
			# Review this line
			@rating_movies[search.movies[i].title] = search.movies[i].rating
		end
		puts @rating_movies
=begin
	{
		"Los Cazafantasmas (1986) (TV Series)"=>6.5,
		"Die Hard (1997) (Short)"=>7.2,
		"El padrino (2006) (Video Game)"=>8.3,
		"Home Alone (1991) (Video Game)"=>5.1,
		"Star Trek: The Next Generation (1993) (Video Game)"=>0.0,
		"La noche de los muertos vivientes (1990)"=>6.9,
		"Titanic (2012) (TV Mini-Series)"=>6.0
	}
=end
	end
end

class RoundNumber
	def round_number
		base = self.floor
		fraction = self - base
		if fraction == 0.5
			if (base % 2) == 0
				base
			else
				base+1
			end

		else
			self.round
		end
	end
end

# a = (3.4).round_number # 3

my_movie = Movie.new
my_movie.search_movie

# Result

=begin
	
	| |#|#| | | | | 
	|#|#|#| | | | | 
	|#|#|#| | |#| | 
	|#|#|#| | |#| |
	|#|#|#| | |#| |
	|#|#|#|#| |#| |
	|#|#|#|#|#|#| |
	|#|#|#|#|#|#|#|
	---------------
	|1|2|3|4|5|6|7|

	1. Ghostbusters
	2. Die Hard
	3. The Godfather
	4. Home alone
	5. Star trek, the new generation
	6. The night of the living dead
	7. Titanic

	If the movie got a star I should print "|#"
	If the movie dont got a star print	   "| "	 
end