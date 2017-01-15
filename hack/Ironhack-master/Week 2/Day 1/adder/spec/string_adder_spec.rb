require_relative '../app/string_adder.rb'

RSpec.describe StringAdder do
	it "adds numbers in a string separated by commas" do
		input = (1..10).sort_by { rand }
		input_str = input.join(",")
		expect(StringAdder.new(input_str).add).to eq(55)
	end

	it "should return 0 for the empty strin" do
		expect(StringAdder.new("").add).to eq(0)
	end

	it "it counts the number of integers in the string" do
		expect(StringAdder.new("11,12,13").counter).to eq(3)
	end

	# Make it happens for homework
	# it "reverses the string of numbers into a comma separated string" do
	# 	expect(StringAdder.new("11,12,13").counter).to eq("13,12,11")
	# end
end
