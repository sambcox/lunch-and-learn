require 'rails_helper'

RSpec.describe 'Tourist Sights Requests' do
  describe 'tourist sights get requests', :vcr do
    it 'returns a list of tourist sights near the capital of the country given' do
      get api_v1_tourist_sights_path(country: 'Thailand')

      expect(response).to be_successful

      parsed_response = JSON.parse(response.body, symbolize_names: true)

      expect(parsed_response[:data]).to be_a(Array)

      parsed_response[:data].each do |sight|
        expect(sight[:id]).to eq(nil)
        expect(sight[:type]).to eq('tourist_sight')
        expect(sight[:attributes]).to have_key(:name)
        expect(sight[:attributes]).to have_key(:address)
        expect(sight[:attributes]).to have_key(:place_id)
        expect(sight[:attributes][:address]).to include('Thailand')
      end
    end
  end
end