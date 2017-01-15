class SiteController < ApplicationController
	def home
		render 'home' # name of view template
	end

	def about
		render 'about' # if you remove this line as we have a file with the same name as the method it will be rendered propertly
	end

	def say_name
		@name = params[:name]
    		render 'say_name' # if you remove this line as we have a file with the same name as the method it will be rendered propertly
    							# http://localhost:3000/say_name/Ignacio
	end

	def calculator
		render 'calculator'
	end

	def calculate
		@num1 = params[:first_num].to_f
		@num2 = params[:second_num].to_f
		@result = @num1 + @num2
		render 'calculate'
	end
end
