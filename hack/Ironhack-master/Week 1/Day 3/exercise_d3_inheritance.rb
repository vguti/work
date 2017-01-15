# Composition
class Car
	def initialize(sound, engine)
		@sound = sound
		@engine = engine
	end

	def sound
		puts @sound
		@engine.sound
	end 
end

class Engine
	def initialize(sound)
		@sound = sound
	end

	def sound
		puts @sound
	end
end

class ElectricEngine < Engine
	def initialize
		super("shhhhhh")
	end
end

class GasoilEngine < Engine
	def initialize
		super("BROOOOM")
	end
end

puts "Electric car sound: "
Car.new("shhhhhh", ElectricEngine.new).sound
puts "Gasoil car sound: "
Car.new("BROOOOM", GasoilEngine.new).sound