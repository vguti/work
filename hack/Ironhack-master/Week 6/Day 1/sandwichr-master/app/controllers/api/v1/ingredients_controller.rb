class Api::V1::IngredientsController < ApplicationController
	def index
	  sandwich = Sandwich.find_by(id: params[:sandwich_id])
	  ingredients = sandwich.ingredients.all
	  render json: ingredients
	end

	def create
	  ingredient = Ingredient.create(ingredient_params)
	  render json: ingredient
	end

	def show
	  ingredient = Ingredient.find_by(id: params[:id])
	  unless ingredient
	    render json: {error: "ingredient not found"},
	    status: 404
	    return
	  end
	  render json: ingredient
	end

	def update
	  ingredient = Ingredient.find_by(id: params[:id])
	  unless ingredient
	    render json: {error: "ingredient not found"},
	    status: 404
	    return
	  end
	  ingredient.update(ingredient_params)
	  render json: ingredient
	end

	def destroy
	  ingredient = Ingredient.find_by(id: params[:id])
	  unless ingredient
	    render json: {error: "ingredient not found"},
	    status: 404
	    return
	  end
	  ingredient.destroy
	  render json: ingredient
	end


	private

	def sandwich_params
	  params.require(:ingredient)
	    .permit(:name, :calories)
	end
end