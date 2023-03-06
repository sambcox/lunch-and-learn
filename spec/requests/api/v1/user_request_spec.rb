require 'rails_helper'

RSpec.describe 'User Requests' do
  describe 'user post requests' do
    it 'can create a user' do
      user_params = {
        name: 'Learning User',
        email: 'learninguser@example.com'
      }
      headers = { 'CONTENT_TYPE' => 'application/json' }
      post api_v1_users_path, headers: headers, params: JSON.generate(user_params)

      expect(response).to be_successful
      parsed_response = JSON.parse(response.body, symbolize_names: true)
      expect(parsed_response[:data][:attributes][:name]).to eq(user_params[:name])
      expect(parsed_response[:data][:attributes][:email]).to eq(user_params[:email])
      expect(parsed_response[:data][:attributes]).to have_key(:api_key)

      created_user = User.last

      expect(created_user.name).to eq('Learning User')
      expect(created_user.email).to eq('learninguser@example.com')
      expect(created_user.api_key.length).to eq(32)
      expect(created_user.api_key).to be_a(String)
    end

    it 'will not create a user if not given a name' do
      user_params = {
        email: 'learninguser@example.com'
      }
      post api_v1_users_path, headers: headers, params: user_params

      expect(response.status).to eq(422)
      parsed_response = JSON.parse(response.body, symbolize_names: true)

      expect(parsed_response[:errors]).to eq(["Name can't be blank"])
    end

    it 'will not create a user if not given an email' do
      user_params = {
        name: 'Learning User'
      }
      post api_v1_users_path, headers: headers, params: user_params

      expect(response.status).to eq(422)
      parsed_response = JSON.parse(response.body, symbolize_names: true)

      expect(parsed_response[:errors]).to eq(["Email can't be blank", 'Email is invalid'])
    end

    it 'will not create a user if given a bad email' do
      user_params = {
        name: 'Learning User',
        email: 'learninguserexample.com'
      }
      post api_v1_users_path, headers: headers, params: user_params

      expect(response.status).to eq(422)
      parsed_response = JSON.parse(response.body, symbolize_names: true)

      expect(parsed_response[:errors]).to eq(['Email is invalid'])
    end

    it 'will not create a duplicate user' do
      User.create!(name: 'Learning User', email: 'learninguser@example.com')
      user_params = {
        name: 'Learning User',
        email: 'learninguser@example.com'
      }
      post api_v1_users_path, headers: headers, params: user_params

      expect(response.status).to eq(422)
      parsed_response = JSON.parse(response.body, symbolize_names: true)

      expect(parsed_response[:errors]).to eq(['Email User already exists with given email'])
    end
  end
end
