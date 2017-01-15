require("date")
class Blog
	def initialize
		@array_of_posts = Array.new
	end

	def add_post(post)
		@array_of_posts.push(post)
	end

	def publish_front_page

		array_sort = @array_of_posts.sort{|x,y| y.date <=> x.date }
		array_sort.each do |post|
			"#{post.post_custom}"
		end
	end
end

class Post
	attr_reader :title, :date, :text
	def initialize(title, date, text, sponsored)
	    @title = title
	    @date = Date.parse(date)
	    @text = text
	    @sponsored = sponsored
	end
	def post_custom
		if @sponsored == true
			puts "SPONSORED - " + @title + " - SPONSORED"
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

uno = Post.new("Título 1", "2001-02-03", "Lorem ipsum dolor sit amet, consectetur adipisicing elit.", true)
dos = Post.new("Título 2", "2014-02-03", "Lorem ipsum dolor sit amet, consectetur adipisicing elit.", false)
tres = Post.new("Título 3", "2011-02-03", "Lorem ipsum dolor sit amet, consectetur adipisicing elit.", false)
cuatro = Post.new("Título 4", "2010-02-03", "Lorem ipsum dolor sit amet, consectetur adipisicing elit.", true)
cinco = Post.new("Título 5", "2016-02-03", "Lorem ipsum dolor sit amet, consectetur adipisicing elit.", false)

blog = Blog.new
blog.add_post(uno)
blog.add_post(dos)
blog.add_post(tres)
blog.add_post(cuatro)
blog.add_post(cinco)
blog.publish_front_page

# array_of_posts = [uno, dos, tres, cuatro, cinco]

# blog = Blog.new
# blog.add_post Post.new(...)
# blog.publish_front_page

# .parse('2001-02-03')