require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :email }
  end
  describe 'instance methods' do
    it 'returns a randomly generated api key' do
      user = User.create!(name: 'Samuel Cox', email: 'samuel@example.com')

      expect(user.api_key.length).to eq(32)
      expect(user.generate_api_key).to be_a(String)
      expect(user.generate_api_key).to_not eq(user.generate_api_key)
    end
  end
end