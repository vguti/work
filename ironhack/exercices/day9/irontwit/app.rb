require 'sinatra'
require 'haml'
require 'pry'
require "sinatra/reloader" if development?
require_relative 'lib/user.rb'

set :haml, format: :html5
enable(:sessions)

@@users = []


get '/' do
  erb(:index)
end

post '/register' do
  @user = User.new(params[:username], params[:password])
  @@users << @user
  session[:logged_in] = true
  redirect to('/profile')
end

get '/profile' do
  @twits = []
  erb(:profile)
end

get "/logout" do
  session[:logged_in] = false
  redirect to("/")
end
