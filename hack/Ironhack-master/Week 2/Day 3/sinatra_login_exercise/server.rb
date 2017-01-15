require 'sinatra'
require 'pry'
require 'sinatra/reloader' if development?

enable(:sessions)

PASSWORDS = {
							user: 	 "123456",
							Ignacio: "123456789",
							guest: 	 "goaway"
						}

get '/' do
	logged = session[:logged_in]
	if logged
		erb(:profile)
	else
		@error = "You´re not logged in"
		erb(:login)
	end
end

post '/logout' do
	session.delete(:logged_in)
	redirect("/")
end

post '/form_receptor' do
	@name = params[:username].to_sym
	if PASSWORDS[@name] == params[:password]
		session[:logged_in] = true
		erb(:profile)
	else
		@error = "Get out!!"
	end
end