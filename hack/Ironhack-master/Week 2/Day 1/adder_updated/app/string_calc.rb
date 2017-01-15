require_relative 'string_adder.rb'

class StringCalc < Struct.new(:str)

  def add
    StringAdder.add(str)
  end

  def counter
    str.split(",").length
  end

  def reverse
    str.split(",").reverse.join(",")
  end
end