class TouristSightFacade
  def self.find_sights(country)
    capital_coords = CountryFacade.find_capital_coords(country)
    sights = TouristSightService.find_sights(capital_coords)
  end
end