require 'rails_helper'

RSpec.describe 'Favorite Requests' do
  describe 'favorite post requests' do
    let(:user) { User.create!(name: 'Samuel Cox', email: 'samuel@example.com') }
    it 'can create a favorite for a user' do
      favorite_params = {
        api_key: user.api_key,
        country: 'thailand',
        recipe_link: 'https://www.testurl.com',
        recipe_title: 'Test Favorite'
      }
      headers = { 'CONTENT_TYPE' => 'application/json'}
      post api_v1_favorites_path, headers: headers, params: JSON.generate(favorite_params)

      expect(response).to be_successful
      parsed_response = JSON.parse(response.body, symbolize_names: true)

      expect(parsed_response[:success]).to eq('Favorite added successfully')
    end

    it 'returns an error if country is not given' do
      favorite_params = {
        api_key: user.api_key,
        recipe_link: 'https://www.testurl.com',
        recipe_title: 'Test Favorite'
      }
      headers = { 'CONTENT_TYPE' => 'application/json'}
      post api_v1_favorites_path, headers: headers, params: JSON.generate(favorite_params)

      expect(response).to_not be_successful
      parsed_response = JSON.parse(response.body, symbolize_names: true)

      expect(parsed_response[:errors]).to eq(["Country can't be blank"])
    end

    it 'returns an error if recipe link is not given' do
      favorite_params = {
        api_key: user.api_key,
        country: 'thailand',
        recipe_title: 'Test Favorite'
      }
      headers = { 'CONTENT_TYPE' => 'application/json'}
      post api_v1_favorites_path, headers: headers, params: JSON.generate(favorite_params)

      expect(response).to_not be_successful
      parsed_response = JSON.parse(response.body, symbolize_names: true)

      expect(parsed_response[:errors]).to eq(["Recipe link can't be blank"])
    end

    it 'returns an error if recipe title is not given' do
      favorite_params = {
        api_key: user.api_key,
        country: 'thailand',
        recipe_link: 'https://www.testurl.com'
      }
      headers = { 'CONTENT_TYPE' => 'application/json'}
      post api_v1_favorites_path, headers: headers, params: JSON.generate(favorite_params)

      expect(response).to_not be_successful
      parsed_response = JSON.parse(response.body, symbolize_names: true)

      expect(parsed_response[:errors]).to eq(["Recipe title can't be blank"])
    end
  end
end