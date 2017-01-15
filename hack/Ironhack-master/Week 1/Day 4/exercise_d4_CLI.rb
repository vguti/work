class User
	def initialize(my_user_name, my_user_password)
		@my_user_name = my_user_name
		@my_user_password = my_user_password
	end

	def name
		puts "Type your username:"
		user_name = gets.chomp
		if user_name = @my_user_name
			my_name_array = user_name.split("")
			my_final_user_variable = Array.new.push("#{my_name_array}")
			puts my_final_user_variable.length
		else
			puts "Wrong username!\nTry again."
		end
	end

	def password
		puts "Type your password:"
		user_password = gets.chomp
		if user_password = @my_user_password
		   my_password_array = user_password.split("")
		   my_final_password_variable = Array.new.push("#{my_password_array}")
		   puts my_final_password_variable.length
		else
			puts "Wrong password!\nTry again."
		end

	end
end

my_user = User.new("laura", "laura")
my_user.name()
my_user.password()