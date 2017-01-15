require 'sinatra'
require "sinatra/reloader" if development?

require_relative 'lib/twit.rb'

enable(:sessions)

get '/' do
  session[:twits] ||= []
  session[:insultodeldia] = [:tonto, :idiota, :vegetariano].sample
  erb(:index)
end

post '/crear_twit' do
  @twit = Twit.new(params[:message])
  session[:twits] << @twit.msg
  erb(:hours_ago)
end