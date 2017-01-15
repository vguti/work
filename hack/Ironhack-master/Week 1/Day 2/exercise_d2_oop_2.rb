# A car needs to hold the names of the cities it visits
# A car should have a method cities that returns the array of names
class Car

	def initialize(visited_cities)
		@visited_cities = visited_cities
	end
	def cities
		puts @visited_cities
	end

	def add_city(city)
		@visited_cities << city
	end
end

my_car = Car.new("") # This makes an empty value, if you write Malaga for example you'll got MalagaMadrid Barcelona
my_car.add_city("Madrid")
my_car.add_city(" Barcelona")
my_car.cities