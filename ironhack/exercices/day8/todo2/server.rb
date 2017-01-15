require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry' if development?

require_relative 'lib/todo_list.rb'
require_relative 'lib/task.rb'

enable(:sessions)

@@list =  TodoList.new("Victor")
  
get '/' do
  @list = @@list.tasks
	erb(:index)
end

get "/new_task" do
  erb(:new_task)
end

post "/create_task" do
	@@list.add_task(Task.new(params[:task]))
	redirect to("/")
end
