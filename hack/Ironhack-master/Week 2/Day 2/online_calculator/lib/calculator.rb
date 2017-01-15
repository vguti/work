class Calculator
  def initialize(num1, num2)
  # def initialize(num1, num2, operation)
		@num1 = num1.to_f
		@num2 = num2.to_f
		# @operation = operation
	end
	def print_result
		# "The #{@operation} of #{@num1} and #{@num2} is: #{@result}"
	end

	def addition
		@num1 + @num2
	end

	def substraction
		@num1 - @num2
	end

	def multiplication
		@num1 * @num2
	end

	def division
		@num1 / @num2
	end	
end