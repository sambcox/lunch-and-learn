require 'rails_helper'

RSpec.describe 'Learning Resources Requests', type: :request do
  describe 'learning resources get' do
    describe 'get a resource for a country', :vcr do
      it 'returns a resource from a country passed in' do
        get api_v1_learning_resources_path(country: 'Thailand')

        expect(response).to be_successful

        parsed_response = JSON.parse(response.body, symbolize_names: true)

        expect(parsed_response[:data][:id]).to eq(nil)
        expect(parsed_response[:data][:type]).to eq('learning_resource')
        expect(parsed_response[:data][:attributes][:video]).to have_key(:title)
        expect(parsed_response[:data][:attributes][:video]).to have_key(:youtube_video_id)
        expect(parsed_response[:data][:attributes][:image]).to be_a(Array)
        expect(parsed_response[:data][:attributes][:image].first).to have_key(:url)
        expect(parsed_response[:data][:attributes][:image].first).to have_key(:alt_tag)
        expect(parsed_response[:data][:attributes][:country]).to eq('Thailand')
      end
    end
  end
end