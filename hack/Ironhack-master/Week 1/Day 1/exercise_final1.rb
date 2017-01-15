class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49),
  Home.new("Nacho's place", "La Navata", 4, 37),
  Home.new("Ranier's place", "Madrid", 3, 40),
  Home.new("Marcos's place", "Pozuelo", 1, 27),
  Home.new("LLuis's place", "Menorca", 2, 29),
  Home.new("Manu's place", "Alcorcón", 5, 47)
]

# Step 1 - Use the each method to print more information about each home. It should look something like this:

=begin
	homes.each do |home|
	  puts "#{home.name}'s place is #{home.city}\nPrice: $#{home.price.to_s} a night"
	end
=end

# Step 2 - Map the array of homes into an array of their prices.
# Use that array of prices to get the average price of homes.
# What collection method should you use for the average?

=begin
	homes_prices = homes.map do |home|
		home.price
	end

	total = homes_prices.reduce do |sum, x|
		sum + x
	end

	average = total / homes.length

	puts average
=end

# Step 3 - Use sort to order the homes by their price.
# Lowest to highest should be the default.
# Instead of having your program end its execution after showing the homes, have it wait for user input.
# Give the user the option to sort by price but with highest first.
# Also give the user the option to sort by capacity. Use different calls to the sort method to do all of these.

=begin
	array_sort = homes.sort_by {|i| i.price}.reverse

	array_sort.each do |home|
		puts "#{home.name} - #{home.city} - #{home.capacity} - #{home.price}"
	end
=end

# Step 4 - Give the user the option to type in a city and only show homes from that city. Use select to achieve this.

=begin
	puts "Type the a price to order cities by price"

	range = gets.chomp
	range = homes.each do |prices|
		prices.price <= range.to_i
		puts "#{prices.price}"
	end
=end

# Step 5 - Use a reduce to show the average price of the homes that the user is looking at.












