class Employee
   attr_reader :name, :email
   def initialize(name, email)
     @name = name
     @email = email
   end
end

class HourlyEmployee < Employee
   def initialize(name, email, hourly_rate, hours_worked)
       @name = name
       @email = email
       @hourly_rate = hourly_rate
       @hours_worked = hours_worked
   end

   def calculate_salary
       weekly_sal = @hourly_rate * @hours_worked
       return weekly_sal
   end
end

class SalariedEmployee < Employee
   def initialize(name, email, yearly_salary)
       @name = name
       @email = email
       @yearly_salary = yearly_salary
   end

   def calculate_salary
       weekly_sal = @yearly_salary / 52.0
       return weekly_sal
   end
end

class MultiPaymentEmployee < Employee
   def initialize(name, email, yearly_salary, hourly_rate, hours_worked)
       @name = name
       @email = email
       @yearly_salary = yearly_salary
       @hourly_rate = hourly_rate
       @hours_worked = hours_worked
   end

   def calculate_salary
       weekly_sal = @yearly_salary / 52.0 + (@hours_worked - 40) * @hourly_rate
       return weekly_sal
   end
end

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
josh_salary = josh.calculate_salary
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
nizar_salary = nizar.calculate_salary
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
ted_salary = ted.calculate_salary
alex = HourlyEmployee.new('Alex', 'google@example.com', 15, 40)
alex_salary = alex.calculate_salary
ignacio = HourlyEmployee.new('Ignacio', 'microsoft@example.com', 15, 40)
ignacio_salary = ignacio.calculate_salary

class Payroll
    @@taxes = 1.18
   def initialize(employees)
       @employees = employees
   end

   def pay_employees
         @employees.each do |employee|
             puts "#{employee.name} => #{employee.calculate_salary * @@taxes}"
         end
   end

   def notify_employee(employee)
         puts "#{employee.name} => #{employee.email} You have been payed for $#{employee.calculate_salary}"
     end   
end

employees = [josh, nizar, ted, alex, ignacio]
payroll = Payroll.new(employees)
payroll.pay_employees
payroll.notify_employee(josh)