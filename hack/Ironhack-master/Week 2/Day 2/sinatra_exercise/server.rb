require 'sinatra'
require 'sinatra/reloader' if development?

enable[:sessions]

get '/hi/:my_date' do
	@date = Date.today
  erb(:about)
end