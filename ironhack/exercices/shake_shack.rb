

class MilkShake
	attr_reader :name, :ingredients, :base_price, :total_price_of_milkshake
	def initialize (name)
		@name = name
		@base_price = 3
		@ingredients = []
	end

	def add_ingredient (ingredient)
		@ingredients.push (ingredient)
	end

	def total_price_of_milkshake
		total_price_of_milkshake = @base_price
		@ingredients.each do |ingredient|
			total_price_of_milkshake += ingredient.price
		end
		total_price_of_milkshake
	end
end


class Ingredient
	attr_reader :name, :price
	def initialize (name,price)
		@name = name
		@price = price
	end
end

class ShakeShop

	def initialize (name)
		@name = name
		@milkshake_list = []
	end

	def add_milkshake (milkshake)
		@milkshake_list.push(milkshake)
	end

	def get_milkshakes
		@milkshake_list.each do |milkshake|
			puts "#{milkshake.name}: #{milkshake.total_price_of_milkshake} euros"
		end
	end
end


chocolate_chip=Ingredient.new("Chocolate Chips",2)
banana=Ingredient.new("Banana",1)
mint=Ingredient.new("Mint",2)

banana_split=MilkShake.new("Banana split")
mint_chocolate_chip=MilkShake.new("Mint Chocolate Chips")

banana_split.add_ingredient(banana)
banana_split.add_ingredient(chocolate_chip)
mint_chocolate_chip.add_ingredient(mint)
mint_chocolate_chip.add_ingredient(chocolate_chip)

victor_shakes=ShakeShop.new("Victor's Shake Shop")
victor_shakes.add_milkshake(banana_split)
victor_shakes.add_milkshake(mint_chocolate_chip)

banana_split.total_price_of_milkshake
mint_chocolate_chip.total_price_of_milkshake

victor_shakes.get_milkshakes
