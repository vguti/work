class Employee
  attr_reader :name, :email
  def initialize(name, email)
    @name = name
    @email = email
  end
end

module Calculate_Year_Salary
  def calculate_week_yearly_salary(salary)
    salary / 52
  end
end

class HourlyEmployee < Employee

  def initialize(name, email, hourly_rate, hours_worked)
    @name = name
    @email = email
    @hourly_rate = hourly_rate.to_f
    @hours_worked = hours_worked.to_f
  end

  def calculate_salary
    "#{name}'s salary are $#{sprintf("%.2f", @hours_worked * @hourly_rate)} per week"
  end
end

class SalariedEmployee < Employee

  include Calculate_Year_Salary

  def initialize(name, email, yearly_salary)
    @name = name
    @email = email
    @yearly_salary = calculate_week_yearly_salary(yearly_salary)
  end

  def calculate_salary
    "#{name}'s salary are $#{sprintf("%.2f", @yearly_salary)} per week"
  end
end

class MultiPaymentEmployee < Employee

  include Calculate_Year_Salary

  def initialize(name, email, yearly_salary, hourly_rate, hours_worked)
    @name = name
    @email = email
    @yearly_salary = calculate_week_yearly_salary(yearly_salary)
    @hourly_rate = hourly_rate.to_f
    @hours_worked = (hours_worked.to_f - 40) * @hourly_rate
  end

  def calculate_salary

    "#{name}'s salary are $#{sprintf("%.2f", @yearly_salary + @hours_worked)} per week"
  end
end

class Payroll
  def initialize(employees)
    @employees = employees
  end

  def pay_employees
    @employees.each {|pay|

      puts pay.calculate_salary
    }
  end

  def notify_employee(employees)

    employees.each { |employer|

      puts "Email sendet to: #{employer.name} <#{employer.email}>"
    }
  end
end

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)

employees = [josh, nizar, ted]
payroll = Payroll.new(employees)
payroll.pay_employees
payroll.notify_employee(employees)