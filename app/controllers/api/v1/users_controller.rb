class Api::V1::UsersController < ApplicationController
  def create
    user = User.new(user_params)

    if user.save
      render json: UserSerializer.new(user), status: :created
    else
      render json: ErrorSerializer.serialize(Error.new(user.errors)), status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.permit(:name, :email)
  end
end