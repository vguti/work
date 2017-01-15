require 'sinatra'

get '/' do
  erb :index
end

post '/suma' do
    @first = params[:firstnumsum]
    @second = params[:secondnumsum]
    puts @first
    puts @second
    @result = @first.to_i + @second.to_i
    erb :resultado
end


post '/multiplicacion' do
    @first = params[:firstnummult]
    @second = params[:secondnummult]
    @result = @first.to_i * @second.to_i 
    erb :resultado
end

post '/resta' do
    @first = params[:firstnumrest]
    @second = params[:secondnumrest]
    @result = @first.to_i - @second.to_i 
    erb :resultado
end


post '/division' do
    @first = params[:firstnumdiv]
    @second = params[:secondnumdiv]
    if @second == 0
     @result= "you cant put 0!!"
    end
    @result = @first.to_f / @second.to_f
    erb :resultado
end

post '/extreme' do
    @first = params[:firstext] 
    @second = params[:secondext]
    @operation = params[:operator]
    if @operation == "*"
      @result = @first.to_i * @second.to_i
    elsif @operation == "/"
      @result = @first.to_f / @second.to_f
    elsif @operation == "+"
      @result = @first.to_i + @second.to_i
    else 
      @result = @first.to_i - @second.to_i
    end
    erb :resultado
end

