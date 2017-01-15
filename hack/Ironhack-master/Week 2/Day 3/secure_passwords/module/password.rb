class PasswordChecker
	def initialize(email, password, name, domain)
		@email = email
		@password = password
		@name = name
		@domain = domain
	end

	def check_password
		@password.length > 7 
	end

	def check_number
		@password.include?(/\d/)
	end

	def check_lowercase_letter
		@password.include?(/[a-z]/)
	end

	def check_symbol
		@password.include?(/\W/)
	end

	def check_uppercase_letter
		@password.include?(/[a-z]/i)
	end

	def check_niether_name_nor_domain
		# if @password != @name && @password != @domain
		# 	false
		# end 
	end
end