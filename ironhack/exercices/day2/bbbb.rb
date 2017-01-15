require 'enumerator'


class Post

	attr_accessor :date, :featured

	def initialize (title, date, text, featured)
		@title = title
		@date = date
		@text = text
		@featured = featured
	end

	def print_post_content
		if featured == "true"
			puts "===" + @title.upcase + "==="
			puts @date
			puts @text
			puts ""
		else
			puts @title
			puts "*********"
			puts @date
			puts @text
			puts ""
		end
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

	def show_front_page
		@post_array.each do |post|
			post.print_post_content
		end
	end

	def show_paginated_front_page(pagination_number)
		@post_array.take(pagination_number).each do |page|
			page.print_post_content
		end
	end

end

post_01 = Post.new "The first title", 2014, "The first content", "true"
post_02 = Post.new "The second title", 2015, "The second content", "false"
post_03 = Post.new "The third title", 2013, "The third content", "false"

post_04 = Post.new "The fouth title", 2012, "Another post content", "false"
post_05 = Post.new "The fifth title", 2011, "Another post content", "false"
post_06 = Post.new "The sixth title", 2007, "Another post content", "false"

post_07 = Post.new "The seventh title", 2009, "Another post content", "false"
post_08 = Post.new "The eighth title", 2008, "Another post content", "false"
post_09 = Post.new "The ninth title", 2010, "Another post content", "false"


my_blog = Blog.new
my_blog.add_post(post_01)
my_blog.add_post(post_02)
my_blog.add_post(post_03)

my_blog.add_post(post_04)
my_blog.add_post(post_05)
my_blog.add_post(post_06)

my_blog.add_post(post_07)
my_blog.add_post(post_08)
my_blog.add_post(post_09)

my_blog.sort_posts_by_date
# my_blog.show_front_page
my_blog.show_paginated_front_page(3)
