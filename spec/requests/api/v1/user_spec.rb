require 'rails_helper'

RSpec.describe 'User Requests' do
  describe 'user post requests' do
    it 'can create a user' do
      user_params = {
        name: 'Learning User',
        email: 'learninguser@example.com'
      }
      post api_v1_users_path, headers: headers, params: user_params

      created_user = User.last

      expect(created_user.name).to eq('Learning User')
      expect(created_user.email).to eq('learninguser@example.com')
      expect(created_user.api_key.length).to eq(32)
      expect(created_user.api_key).to be_a(String)
    end
  end
end