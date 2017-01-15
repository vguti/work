class Question
	attr_reader :movies
	
	def initialize(movies)
		@movies = movies
	end

	def error_message
		my_array_of_movies = []
		if my_array_of_movies.empty?
			"WARNING: Empty array, try again!"
		end
	end

	def array_length
		@movies
	end
end