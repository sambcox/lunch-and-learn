class CountryFacade
  def self.random_country
    countries = CountryService.countries.map do |country|
      country[:name][:common]
    end
    countries.shuffle.sample
  end

  def self.find_capital_coords(country)
    country_info = CountryService.country(country)
    country_info.first[:capitalInfo][:latlng].reverse.join(',')
  end
end
