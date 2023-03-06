class Api::V1::TouristSightsController < ApplicationController
  before_action :confirm_country
  def index
    sights = TouristSightFacade.find_sights(tourist_sights_params[:country])
    render json: TouristSightSerializer.new(sights)
  end

  private

  def tourist_sights_params
    params.permit(:country)
  end
end
