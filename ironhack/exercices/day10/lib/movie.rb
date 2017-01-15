require 'imdb'
class Movies
	attr_reader :movies

	def initialize
		@movies = []
		@posters = []
	end


	def search_movies(movie)
		search = Imdb::Search.new(movie)
		@movies = search.movies.first(20)
		filter_movies(@movies)
	end


	def filter_movies(movies)
		@movies.each do |movie|
			if movie.poster != nil
			  add_movies(movie)
			end
		end
		@movies = @posters
	end


	def add_movies(movie)
		@posters << movie
	end


end