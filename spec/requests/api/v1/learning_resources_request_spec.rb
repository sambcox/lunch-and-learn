require 'rails_helper'

RSpec.describe 'Learning Resources Requests', type: :request do
  describe 'learning resources get' do
    describe 'get a resource for a country', :vcr do
      it 'returns a resource from a country passed in' do
        get api_v1_learning_resources_path(country: 'Finland')

        expect(response).to be_successful

        parsed_response = JSON.parse(response.body, symbolize_names: true)

        expect(parsed_response[:data][:id]).to eq(nil)
        expect(parsed_response[:data][:type]).to eq('learning_resource')
        expect(parsed_response[:data][:attributes][:video]).to have_key(:title)
        expect(parsed_response[:data][:attributes][:video]).to have_key(:youtube_video_id)
        expect(parsed_response[:data][:attributes][:images]).to be_a(Array)
        expect(parsed_response[:data][:attributes][:images].first).to have_key(:url)
        expect(parsed_response[:data][:attributes][:images].first).to have_key(:alt_tag)
        expect(parsed_response[:data][:attributes][:country]).to eq('Finland')
      end

      it 'returns an error if no country is passed in' do
        get api_v1_learning_resources_path

        expect(response.status).to eq(400)

        parsed_response = JSON.parse(response.body, symbolize_names: true)

        expect(parsed_response[:message]).to eq('There was an error processing your request')
        expect(parsed_response[:errors]).to eq(['Country must be provided'])
      end

      it 'returns an error if country passed in is not valid' do
        get api_v1_learning_resources_path(country: 'Invalid')

        expect(response.status).to eq(400)

        parsed_response = JSON.parse(response.body, symbolize_names: true)

        expect(parsed_response[:message]).to eq('There was an error processing your request')
        expect(parsed_response[:errors]).to eq(['Country provided must be a valid country'])
      end
    end
  end
end
