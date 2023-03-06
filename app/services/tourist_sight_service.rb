class TouristSightService
  def self.conn
    Faraday.new(url: 'https://api.geoapify.com/v2/places') do |f|
      f.params['categories'] = 'tourism.sights'
      f.params['apiKey'] = ENV['PLACES_API_KEY']
      f.params['limit'] = '20'
    end
  end

  def self.find_sights(capital_coords)
    response = conn.get do |f|
      f.params['filter'] = "circle:#{capital_coords},20000"
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end