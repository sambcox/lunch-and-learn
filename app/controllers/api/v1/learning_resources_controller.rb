class Api::V1::LearningResourcesController < ApplicationController
  def index
    raise BadDataError, 'Country must be provided' unless params[:country]

    resource = LearningResourceFacade.find_resources(learning_resource_params[:country])
    render json: LearningResourceSerializer.new(resource)
  end

  private

  def learning_resource_params
    params.permit(:country)
  end
end
