employees = []

class Employee
    attr_reader :name, :email, :weekly_salary
    
    def initialize(name, email)
      @name = name
      @email = email
      @weekly_salary = []
    end
end

class HourlyEmployee < Employee
	attr_accessor :hourly_rate, :hours_worked
    
    def initialize(name, email, hourly_rate, hours_worked)
        super(name, email)
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      #returns the hours worked * hourly_rate
      puts @hourly_rate * @hours_worked 
      @weekly_salary = @hourly_rate * @hours_worked
    end
end

class SalariedEmployee < Employee
	attr_accessor :year_salary
    
    def initialize(name, email, year_salary)
        super(name, email)
        @year_salary = year_salary
    end

    def calculate_salary
      #returns the hours worked * hourly_rate
      puts @year_salary / 52
      @weekly_salary = @year_salary / 52
    end
end

class MultiPaymentEmployee < Employee
	attr_accessor :hourly_rate, :hours_worked, :year_salary
    
    def initialize(name, email, year_salary, hourly_rate, hours_worked)
        super(name, email)
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
        @year_salary = year_salary
    end

    def calculate_salary
      #returns the hours worked * hourly_rate
    	if @hours_worked >40
      		puts ((@hours_worked - 40) * @hourly_rate) + (@year_salary / 52)
      		@weekly_salary =  ((@hours_worked - 40) * @hourly_rate) + (@year_salary / 52)
  		else
  			puts @year_salary / 52
  			@weekly_salary = @year_salary / 52
  		end
    end

end

class Payroll
	def initialize(employees)
		@employees = employees
	end

	def pay_employees
	      # Should output how much we're paying each employee for this week and the total amount spent on payroll this week. 
		puts @name + " => "+ @weekly_salary

	end	
end


josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)

josh.calculate_salary
nizar.calculate_salary
ted.calculate_salary

puts employees


