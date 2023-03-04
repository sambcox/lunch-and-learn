require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :email }
    it { should validate_uniqueness_of(:email).with_message('User already exists with given email').case_insensitive }
    it { should allow_value('sam@example.com').for(:email) }
    it { should_not allow_value('samexample.com').for(:email) }
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