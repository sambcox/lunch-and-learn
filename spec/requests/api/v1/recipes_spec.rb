require 'rails_helper'

RSpec.describe 'Recipes Requests', type: :request do
  describe 'recipes get' do
    describe 'get all recipes for a country', :vcr do
      it 'returns all recipes for a country' do
        get api_v1_recipes_path(country: 'Thailand')

        expect(response).to be_successful

        parsed_response = JSON.parse(response.body, symbolize_names: true)

        expect(parsed_response[:data]).to be_a(Array)

        expect(parsed_response[:data].first[:id]).to eq(nil)
        expect(parsed_response[:data].first[:type]).to eq('recipe')
        expect(parsed_response[:data].first[:attributes]).to have_key('title')
        expect(parsed_response[:data].first[:attributes]).to have_key('image')
        expect(parsed_response[:data].first[:attributes]).to have_key('url')
        expect(parsed_response[:data].first[:attributes][:country]).to eq('thailand')
      end
    end
  end
end