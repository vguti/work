require 'sinatra'
require 'haml'
require "sinatra/reloader" if development?

set :haml, format: :html5
enable(:sessions)

get '/' do
 erb(:index)
end