require 'sinatra'
require 'imdb'
require 'pry'
require 'sinatra/reloader' if development?
require_relative 'models/quitz.rb'
require_relative 'models/question.rb'

my_quitz = Quitz.new
my_question = Question.new("")

get "/"  do
	erb(:home)
end