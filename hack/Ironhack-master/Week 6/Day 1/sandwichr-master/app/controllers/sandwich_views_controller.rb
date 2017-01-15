class SandwichViewsController < ApplicationController
	def index
		@sandwich = Sandwich.all
	end
end
