require "sinatra"
require_relative "lib/calculator.rb"

get "/" do
 erb(:index)
end

get "/add" do
  erb(:add)
end

get "/sub" do
	erb(:sub)
end

get "/mul" do
	erb(:mul)
end

get "/div" do
	erb(:div)
end

post "/calculate_add" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = Calculator.new(first,second).addition
  "#{first} + #{second} = #{result}"
end

post "/calculate_sub" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = Calculator.new.(first,second).substraction
  "#{first} - #{second} = #{result}"
end

post "/calculate_mul" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = Calculator.new.(first,second).multiplication
  "#{first} * #{second} = #{result}"
end

post "/calculate_div" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = Calculator.new.(first,second).division
  "#{first} / #{second} = #{result}"
end






=begin

This uses the same view to every action
	
	get "/add" do
	    erb(:add)
	end

	get "/done/:result" do
	    erb :done, :locals => {:result => params[:result]}
	end

	post "/add" do
	    first = params[:first_number].to_f
	    second = params[:second_number].to_f
	    result= first + second
	    redirect to("/done/"+result.to_s)
	end
	
=end

----

=begin
	
require 'sinatra'
require "./app/Calculator.rb"

get '/calc3' do 
    erb(:calc3)
end


	post "/calculator" do
	    "Params data: " + params.inspect
	    operation = params[:operation]
	 first = params[:first_number].to_f
	 second = params[:second_number].to_f

	 calc1 = Calculator.new(first,second)

	 case operation
	 when "addition"
	     result = calc1.addit
	     sign = "+"
	 when "subtraction"
	     result = calc1.subtrac
	     sign = "-"
	 when "multiplication"
	     result = calc1.multipl
	     sign = "*"
	 when "division"
	     result = calc1.divis
	     sign = "/"
	 end

	 "#{first} #{sign} #{second} = #{result}"
	end
	
=end
