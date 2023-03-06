class Api::V1::LearningResourcesController < ApplicationController
  before_action :confirm_country
  def index
    resource = LearningResourceFacade.find_resources(learning_resource_params[:country])
    render json: LearningResourceSerializer.new(resource)
  end

  private

  def confirm_country
    raise BadDataError, 'Country must be provided' unless params[:country]
    return if CountryFacade.valid_country?(learning_resource_params[:country])

    raise BadDataError, 'Country provided must be a valid country'
  end

  def learning_resource_params
    params.permit(:country)
  end
end
