require 'rails_helper'

RSpec.describe 'Country Facade' do
  describe 'Country information', :vcr do
    it 'returns the coordinates of a capital given a country' do
      coords = CountryFacade.find_capital_coords('finland')

      expect(coords).to eq('24.93,60.17')
    end
  end

  describe 'Country Validations', :vcr do
    it 'returns a boolean indicating whether the country is valid' do
      expect(CountryFacade.valid_country?('Thailand')).to eq(true)
      expect(CountryFacade.valid_country?('Invalid')).to eq(false)
    end

    it 'is case insensitive' do
      expect(CountryFacade.valid_country?('thailand')).to eq(true)
    end
  end
end