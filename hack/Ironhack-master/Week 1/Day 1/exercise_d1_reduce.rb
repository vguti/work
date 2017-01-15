prices = [10, 40, 90]
total = prices.reduce do |sum, x|
	sum + x
end

average = total / prices.length

puts average