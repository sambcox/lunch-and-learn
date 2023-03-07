require 'rails_helper'

RSpec.describe 'Tourist Sight Facade' do
  describe 'Tourist Sight information', :vcr do
    it 'returns an array of tourist sights' do
      sights = TouristSightFacade.find_sights('finland')

      sights.each do |sight|
        expect(sight).to be_a(TouristSight)
        expect(sight.name).to be_a(String)
        expect(sight.place_id).to be_a(String)
        expect(sight.address).to include('Finland')
      end
    end
  end
end
