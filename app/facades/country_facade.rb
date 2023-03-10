class CountryFacade
  def self.random_country
    countries = Rails.cache.fetch('countries', expires_in: 1.week) do
      CountryService.countries.map do |country|
        country[:name][:common]
      end
    end
    countries.shuffle.sample
  end

  def self.find_capital_coords(country)
    country_info = CountryService.country(country)
    country_info.first[:capitalInfo][:latlng].reverse.join(',')
  end

  def self.valid_country?(country_input)
    countries = CountryService.countries.map do |country|
      country[:name][:common].downcase
    end

    countries.include?(country_input.downcase)
  end
end
