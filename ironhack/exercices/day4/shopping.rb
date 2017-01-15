require 'pry'

class ShoppingCart
	def initialize
		@items = {}
		@price = 0
	end

	def add_item_to_cart(item)
		count= @items.each
		@items[item.class] = item.price
		puts @items
	end

	def show
		@items.each do |fruit|
			puts fruit[:item] + fruit[:price]
		end
	end

end



class Fruit
	attr_reader :price
end

class Apple < Fruit

	def initialize
		@price = 10
	end
	def price
		@price
	end

end

class Orange < Fruit
	def initialize
		@price = 5
	end

end

class Grape < Fruit
	def initialize
		@price = 15
	end

end

class Banana < Fruit
	def initialize
		@price = 20
	end

end

class Watermelon < Fruit
	def initialize
		@price = 50
	end

end



cart = ShoppingCart.new
banana = Banana.new
apple = Apple.new


cart.add_item_to_cart apple
cart.add_item_to_cart banana
cart.add_item_to_cart banana

#binding.pry

#cart.show





=begin
cart.show
1 apple: 10$
2 bananas: 40$

cart.cost = 50

=begin
	
apples     10$  2x1
oranges     5$	3x2
grapes     15$	4->free banana?
banana     20$
watermelon 50$

           Spring Summer Autumn Winter
apples        10$    10$    15$    12$
oranges        5$     2$     5$     5$
grapes        15$    15$    15$    15$
banana        20$    20$    20$    21$
watermelon always 50$ but 100$ Sundays

=end