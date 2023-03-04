class Api::V1::LearningResourcesController < ApplicationController
  def index
    if params[:country]
      resource = LearningResourceFacade.find_resources(learning_resource_params[:country])
      render json: LearningResourceSerializer.new(resource)
    else
      raise BadDataError.new('Country must be provided')
    end
  end

  private

  def learning_resource_params
    params.permit(:country)
  end
end