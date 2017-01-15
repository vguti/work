class Car
	def initialize(sound_to_make, speed_acceleration)
		@sound_to_make = sound_to_make
		@speed_acceleration = speed_acceleration
	end

	def acceleration
		puts "#{@speed_acceleration*10}Km/h"
	end

	def noise
		puts "#{@sound_to_make}"
	end

	# Prints 2 times a car noise
	def self.double_noise(car)
		2.times do 
			car.noise
		end    
	end
end



my_car = Car.new("Broom", 10)
my_car.noise
my_car.acceleration
Car.double_noise(my_car)

# my_race_car = Car.new("BROOOOOM", 13)
# my_race_car.noise
# my_race_car.acceleration