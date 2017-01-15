class StringAdder
  def self.add(str)
    str.split(",").map { |i| i.to_i }.inject(:+).to_i
  end
end