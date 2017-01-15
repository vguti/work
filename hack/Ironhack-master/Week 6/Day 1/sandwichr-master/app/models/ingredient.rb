class Ingredient < ActiveRecord::Base
	has_many :sandwiches_ingredients
  	has_many :sandwiches, through: :sandwiches_ingredients
end
