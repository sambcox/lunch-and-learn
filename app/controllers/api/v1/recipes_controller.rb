class Api::V1::RecipesController < ApplicationController
  def index
    if recipe_params[:country]
      recipes = RecipeFacade.find_by_country(recipe_params[:country])
      render json: RecipeSerializer.new(recipes)
    end
  end

  private

  def recipe_params
    params.permit(:country)
  end
end