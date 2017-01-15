require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'imdb'
require_relative 'lib/movie.rb'

quiz = Movies.new

get("/") do
  erb(:index)
end

post "/search_movie" do
	quiz.search_movies(params[:word])
	redirect "/show_movies"
end

get "/show_movies" do
	@movies=quiz.movies
	erb :show_movies
end



=begin
quiz = QuizMovies.new
quest = Questions.new

get "/"  do
	erb :home
end

post "/search_word" do
	quiz.search_movies(params[:word])
	redirect "/show_movies"
end

get "/show_movies" do
	@movies = quiz.movies
	@question = quest.question1(@movies)
	@answer = [quest.answer, quest.is_ok]
	erb :showMovies
end

post "/answer/:answer" do
	quest.answer_to_question(params[:answer])
	redirect "/show_movies"
end
=end
	
