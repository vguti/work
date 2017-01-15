class Car
  def initialize(engine, noise="ññññññññññññññ")
    @engine = engine
    @noise = noise
  end

  def make_noise
    @noise + @engine.noise
  end
end

class Engine
  attr_reader :noise

  def initialize(type)
    @type = type
    if type == "diesel"
      @noise = "brrrrrrrr"
    elsif type == "electric"
      @noise = "zzzzzmmmmmmm"
    else
      @noise = "brrruuuummmmm"
    end
  end
end

motor = Engine.new("electric")
coche = Car.new(motor)
puts motor.noise
puts coche.make_noise