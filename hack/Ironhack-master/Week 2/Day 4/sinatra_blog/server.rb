require 'sinatra'
require 'pry'
require 'sinatra/reloader' if development?
require_relative 'app/models/blog.rb'
require_relative 'app/models/post.rb'

enable(:sessions)

blog = Blog.new
blog.add_post Post.new("ONE: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eget dapibus leo. Phasellus tincidunt pellentesque massa. Phasellus sodales erat in velit rhoncus, a aliquet leo cursus. Donec elementum sagittis aliquam. Aliquam erat volutpat. Vivamus lobortis neque quis porta gravida. Nulla facilisi. Etiam ut finibus orci. Ut molestie purus quis ornare molestie. Sed volutpat fringa.")
blog.add_post Post.new("TWO: Etiam sit amet bibendum ex, et tincidunt lectus. Nullam ut augue nec felis auctor tincidunt nec sed neque. In hac habitasse platea dictumst. Sed vulputate ultrices elit. Proin faucibus dictum lorem vel varius. Sed a blandit sapien, id ultrices nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent pellentesque tempus magna, vitae placerat tortor imperdiet ai.")