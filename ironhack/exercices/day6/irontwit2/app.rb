require 'sinatra'
require 'haml'
require "sinatra/reloader" if development?

set :haml, format: :html5
enable(:sessions)

get '/' do
  erb(:index)
end

get '/urldelinfierno' do
  @titulo = "Hoy es dia #{Date.today.to_s}"
  
  erb(:infierno)
end

get '/urldelnoinfierno/:name' do
  params[:name] ||= "Bob"
  @titulo = "Hoy no estas en el infierno, #{params[:name]}"
  
  erb(:no_infierno)
end