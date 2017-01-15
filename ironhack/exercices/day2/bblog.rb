class Post

	attr_accessor :date

	def initialize (title, date, text)
		@title = title
		@date = date
		@text = text
	end

	def publish_front_page
		puts @title
		puts "*********"
		puts @date
		puts @text
		puts "-------------"
	end

end

class Blog

	def initialize ()
		@post_array = []
	end

	def add_post(post)
		@post_array.push(post)
	end

	def sort_posts_by_date
		@post_array.sort! {|a,b| b.date <=> a.date}
	end
		
end

blog = Blog.new
post1 = Post.new("titulo1","2010-01-02","dka asdasdkj")
post2 = Post.new("titulo2","2010-03-11","dka rththrth")
post3 = Post.new("titulo1","2010-06-07","dka thhrrt")

blog.add_post(post1)
blog.add_post(post2)
blog.add_post(post3)


blog.publish_front_page

