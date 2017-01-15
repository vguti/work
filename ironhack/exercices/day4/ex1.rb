=begin

puts "Insert your user name"
uname = gets.chomp
puts "Insert your password"
password = gets.chomp

if Authenticator.authenticate(uname,password)
	puts "type some text"
	text= gets.chomp
	puts "Your text has #{WordCounter.count(text)}words"
else 
	puts "incorrect username or password"
end

=end

require "pry"

class User
	def login
		puts "Insert your user name"
		uname = gets.chomp
		puts "Insert your password"
		password = gets.chomp
		while !Authenticator.authenticate(uname,password)
			puts "incorrect username or password"
			puts "Insert your user name"
			uname = gets.chomp
			puts "Insert your password"
			password = gets.chomp
		end
		puts "type some text"
		text=gets.chomp
		puts "Your text has #{WordCounter.count(text)}words"

	end
end



class Authenticator
	def self.authenticate(uname,password)
		if uname =="victor" && password=="secret"
			true
		else
			false
		end
	end
end

class WordCounter
	def self.count(text)
		text.split(" ").length
	end
end
