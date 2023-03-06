require 'rails_helper'

RSpec.describe 'Country Facade' do
  describe 'Country information', :vcr do
    it 'returns the coordinates of a capital given a country' do
      coords = CountryFacade.find_capital_coords('finland')

      expect(coords).to eq('24.93,60.17')
    end
  end
end