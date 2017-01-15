require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

require_relative './lib/user.rb'
require_relative './lib/todo_list.rb'
require_relative './lib/task.rb'

get '/' do
  'Welcome to your todo list'
end