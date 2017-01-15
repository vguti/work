require 'sinatra'
require 'haml'
require "sinatra/reloader" if development? # gem install sinatra-contrib
require_relative 'app/models/twit.rb'

@@twits = []

set :haml, :format => :html5
enable(:sessions)

get "/" do
  haml(:homepage)
end

post '/new_tweet' do
  @body = params[:body]
  twit = Twit.new(@body)
  if twit.valid?
    @@twits << twit
    @body = ""
    redirect("/")
  else
    @error = "Twit invalid"
  end
  haml(:homepage)
end

