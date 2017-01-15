class StringAdder < Struct.new(:str)
	def add
		str.split(",").map { |i| i.to_i }.inject(:+).to_i
	end

	def counter
		str.split(",").size
	end

	# Make it happens for homework
	# def self.reverse(str)
	# 	"13,12,11"
	# end
end
