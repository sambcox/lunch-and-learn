class Api::V1::TouristSightsController < ApplicationController
  def index
    sights = TouristSightFacade.find_sights(tourist_sights_params[:country])
  end

  private

  def tourist_sights_params
    params.permit(:country)
  end
end