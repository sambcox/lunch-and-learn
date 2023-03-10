class CountryService
  def self.conn
    Faraday.new(url: 'https://restcountries.com/v3.1/')
  end

  def self.countries
    response = conn.get('all')
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.country(country)
    response = conn.get("name/#{country}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
