class Api::V1::LearningResourcesController < ApplicationController
  before_action :confirm_country
  def index
    resource = LearningResourceFacade.find_resources(learning_resource_params[:country])
    render json: LearningResourceSerializer.new(resource)
  end

  private

  def learning_resource_params
    params.permit(:country)
  end
end
