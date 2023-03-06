class Api::V1::FavoritesController < ApplicationController
  def create
    user = User.find_by_api_key(params[:api_key])

    favorite = user.favorites.new(favorite_params)

    if favorite.save
      render json: { success: 'Favorite added successfully' }, status: :created
    else
      render json: ErrorSerializer.serialize(Error.new(favorite.errors)), status: :unprocessable_entity
    end
  end

  private

  def favorite_params
    params.permit(:country, :recipe_link, :recipe_title)
  end
end