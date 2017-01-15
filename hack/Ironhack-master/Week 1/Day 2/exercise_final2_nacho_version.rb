require("date")
class Blog
	def initialize
		@posts = []
	end
	def add_post(post)
		@posts.push(post)
	end
	
	def publish_front_page
		sorted_array = @posts.sort{|x, y| x.date <=> y.date}
		sorted_array.each do |post|
			"#{post.post_custom}"
		end
	end
end
​
class Post
	attr_accessor :title, :date, :text
	def initialize (title, date, text, sponsored)
		@title = title
		@date = date 
		@text = text
		@sponsored = sponsored
	end
	def post_custom
		if @sponsored == true
			puts "*****" + @title + "*****"
			puts "************"
			puts @text
			puts "------------"
		else
			puts @title
			puts "************"
			puts @text
			puts "------------"
		end
	end
end
​
post1 = Post.new("WHAT", Date.new(2016, 3, 8), "we do in life, echoes in eternity", true)
post2 = Post.new("MI", Date.new(2016, 3, 4), "mamá dice que la vida es como una caja de bombones", false)
post3 = Post.new("WINTER", Date.new(2015, 7, 8), "is coming", false)
post4 = Post.new("QUÉ", Date.new(2016, 7, 8), "importa como me llame, se nos conoce por nuestros actos", true)
​
post_array = [post1, post2, post3, post4]
# post1.post_custom
# post2.post_custom
# post3.post_custom
# post4.post_custom
#meditemos un poquisho: lo que quieres es un pegamento para todo lo tuyo
#pulsando, me debería aparecer todo lo que quieres en el orden que quieres
#además tienes que poder añadir posts (obvio)
​
blog = Blog.new
blog.add_post post1
blog.add_post post2
blog.add_post post3
blog.add_post post4
blog.publish_front_page
#Hasta aquí, tu código va de puta madre (falta desarrollar post_order)