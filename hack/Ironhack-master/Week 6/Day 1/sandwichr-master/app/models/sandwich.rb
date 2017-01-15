class Sandwich < ActiveRecord::Base
	has_many :sandwiches_ingredients
  	has_many :ingredients, through: :sandwiches_ingredients
end
