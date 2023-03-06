class Api::V1::FavoritesController < ApplicationController
  before_action :set_user

  def create
    favorite = @user.favorites.new(favorite_params)

    if favorite.save
      render json: { success: 'Favorite added successfully' }, status: :created
    else
      render json: ErrorSerializer.serialize(Error.new(favorite.errors)), status: :unprocessable_entity
    end
  end

  def index
    favorites = @user.favorites
    render json: FavoriteSerializer.new(favorites)
  end

  private

  def set_user
    return if @user = User.find_by_api_key(favorite_api_key[:api_key])

    raise ActiveRecord::RecordNotFound, 'Unable to validate API key'
  end

  def favorite_api_key
    params.permit(:api_key)
  end

  def favorite_params
    params.permit(:country, :recipe_link, :recipe_title)
  end
end
