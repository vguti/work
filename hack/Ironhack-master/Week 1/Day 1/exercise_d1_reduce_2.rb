cities = ["miami", "madrid", "barcelona"]

total_cities = cities.reduce do |sum, x|
	sum + x
end

puts total_cities.length / cities.length