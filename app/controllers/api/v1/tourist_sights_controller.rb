class Api::V1::TouristSightsController < ApplicationController
  before_action :confirm_country
  def index
    sights = TouristSightFacade.find_sights(tourist_sights_params[:country])
    render json: TouristSightSerializer.new(sights)
  end

  private

  def confirm_country
    raise BadDataError.new('Country must be provided') unless params[:country]
    raise BadDataError.new('Country provided must be a valid country') unless CountryFacade.valid_country?(tourist_sights_params[:country])
  end

  def tourist_sights_params
    params.permit(:country)
  end
end