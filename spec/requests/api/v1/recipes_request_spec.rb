require 'rails_helper'

RSpec.describe 'Recipes Requests', type: :request do
  describe 'recipes get' do
    describe 'get all recipes for a country', :vcr do
      it 'returns all recipes for a country passed in' do
        get api_v1_recipes_path(country: 'Thailand')

        expect(response).to be_successful

        parsed_response = JSON.parse(response.body, symbolize_names: true)

        expect(parsed_response[:data]).to be_a(Array)

        parsed_response[:data].each do |recipe|
          expect(recipe[:id]).to eq(nil)
          expect(recipe[:type]).to eq('recipe')
          expect(recipe[:attributes]).to have_key(:title)
          expect(recipe[:attributes]).to have_key(:image)
          expect(recipe[:attributes]).to have_key(:url)
          expect(recipe[:attributes][:country]).to eq('Thailand')
        end
      end

      it 'uses a random country if none is given', vcr: { record: :new_episodes } do
        get api_v1_recipes_path

        expect(response).to be_successful

        parsed_response = JSON.parse(response.body, symbolize_names: true)

        expect(parsed_response[:data]).to be_a(Array)

        country = parsed_response[:data].first[:attributes][:country]

        parsed_response[:data].each do |recipe|
          expect(recipe[:id]).to eq(nil)
          expect(recipe[:type]).to eq('recipe')
          expect(recipe[:attributes]).to have_key(:title)
          expect(recipe[:attributes]).to have_key(:image)
          expect(recipe[:attributes]).to have_key(:url)
          expect(recipe[:attributes][:country]).to eq(country)
        end
      end

      it 'will return an error if param is given but no text is given' do
        get api_v1_recipes_path(country: '')

        expect(response.status).to eq(400)

        parsed_response = JSON.parse(response.body, symbolize_names: true)

        expect(parsed_response[:message]).to eq('There was an error processing your request')
        expect(parsed_response[:errors]).to eq(['Country provided must be a valid country'])
      end

      it 'returns an error if country passed in is not valid' do
        get api_v1_recipes_path(country: 'Invalid')

        expect(response.status).to eq(400)

        parsed_response = JSON.parse(response.body, symbolize_names: true)

        expect(parsed_response[:message]).to eq('There was an error processing your request')
        expect(parsed_response[:errors]).to eq(['Country provided must be a valid country'])
      end
    end
  end
end
