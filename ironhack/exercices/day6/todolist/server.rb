#Inside of server.rb
require 'sinatra'
require 'sinatra/reloader'
# We're going to need to require our class files
require_relative('lib/todolist.rb')

todo_list = TodoList.new("Josh")
todo_list.load_tasks