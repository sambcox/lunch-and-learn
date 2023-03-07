class Api::V1::RecipesController < ApplicationController
  before_action :random_country
  before_action :confirm_country
  def index
    recipes = RecipeFacade.find_by_country(recipe_params[:country])
    render json: RecipeSerializer.new(recipes)
  end

  private

  def random_country
    params[:country] = CountryFacade.random_country unless recipe_params[:country]
  end

  def recipe_params
    params.permit(:country)
  end
end
