class Blog
	attr_reader :posts
	def initialize
 		@posts = []
	end

	def add_post(my_post)
		@posts.push(my_post)
	end
end