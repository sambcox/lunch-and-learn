require 'rails_helper'

RSpec.describe 'Tourist Sight' do
  describe 'existence' do
    it 'exists' do
      sight = TouristSight.new({
                                 name: 'Glims',
                                 country: 'Finland',
                                 country_code: 'fi',
                                 state: 'Mainland Finland',
                                 state_district: 'Southern Finland',
                                 county: 'Uusimaa',
                                 city: 'Espoo',
                                 municipality: 'Helsinki sub-region',
                                 postcode: '02740',
                                 district: 'Vanha-Espoo',
                                 neighbourhood: 'Karvasmäki',
                                 suburb: 'Karvasmäki',
                                 street: 'Glimsintie',
                                 housenumber: '1',
                                 lon: 24.6798036,
                                 lat: 60.2210185,
                                 formatted: 'Glimsintie 1, 02740 Espoo, Finland',
                                 address_line1: 'Glimsintie 1',
                                 address_line2: '02740 Espoo, Finland',
                                 categories: [
                                   'entertainment',
                                   'entertainment.museum',
                                   'tourism',
                                   'tourism.sights'
                                 ],
                                 details: [
                                   'details',
                                   'details.contact'
                                 ],
                                 datasource: {
                                   sourcename: 'openstreetmap',
                                   attribution: '© OpenStreetMap contributors',
                                   license: 'Open Database Licence',
                                   url: 'https://www.openstreetmap.org/copyright',
                                   raw: {
                                     name: 'Glims',
                                     phone: '+358 9 816 27337',
                                     osm_id: 60_250_260,
                                     tourism: 'museum',
                                     website: 'http://www.espoonkaupunginmuseo.fi/fi-FI/Talomuseo_Glims',
                                     historic: 'farm',
                                     osm_type: 'n',
                                     'addr:city': 'Espoo',
                                     'addr:street': 'Glimsintie',
                                     'addr:postcode': '02740',
                                     opening_hours: 'Tu-Fr 10:00-16:00; Su 11:00-16:00',
                                     'addr:housenumber': 1
                                   }
                                 },
                                 place_id: '51fcb3d59b07ae384059074092554a1c4e40f00103f9019458970300000000920305476c696d73',
                                 geometry: {
                                   type: 'Point',
                                   coordinates: [
                                     24.6798036,
                                     60.221018501673875
                                   ]
                                 }
                               })

      expect(sight).to be_a(TouristSight)
    end

    it 'has attributes' do
      sight = TouristSight.new({
                                 name: 'Glims',
                                 country: 'Finland',
                                 country_code: 'fi',
                                 state: 'Mainland Finland',
                                 state_district: 'Southern Finland',
                                 county: 'Uusimaa',
                                 city: 'Espoo',
                                 municipality: 'Helsinki sub-region',
                                 postcode: '02740',
                                 district: 'Vanha-Espoo',
                                 neighbourhood: 'Karvasmäki',
                                 suburb: 'Karvasmäki',
                                 street: 'Glimsintie',
                                 housenumber: '1',
                                 lon: 24.6798036,
                                 lat: 60.2210185,
                                 formatted: 'Glimsintie 1, 02740 Espoo, Finland',
                                 address_line1: 'Glimsintie 1',
                                 address_line2: '02740 Espoo, Finland',
                                 categories: [
                                   'entertainment',
                                   'entertainment.museum',
                                   'tourism',
                                   'tourism.sights'
                                 ],
                                 details: [
                                   'details',
                                   'details.contact'
                                 ],
                                 datasource: {
                                   sourcename: 'openstreetmap',
                                   attribution: '© OpenStreetMap contributors',
                                   license: 'Open Database Licence',
                                   url: 'https://www.openstreetmap.org/copyright',
                                   raw: {
                                     name: 'Glims',
                                     phone: '+358 9 816 27337',
                                     osm_id: 60_250_260,
                                     tourism: 'museum',
                                     website: 'http://www.espoonkaupunginmuseo.fi/fi-FI/Talomuseo_Glims',
                                     historic: 'farm',
                                     osm_type: 'n',
                                     'addr:city': 'Espoo',
                                     'addr:street': 'Glimsintie',
                                     'addr:postcode': '02740',
                                     opening_hours: 'Tu-Fr 10:00-16:00; Su 11:00-16:00',
                                     'addr:housenumber': 1
                                   }
                                 },
                                 place_id: '51fcb3d59b07ae384059074092554a1c4e40f00103f9019458970300000000920305476c696d73',
                                 geometry: {
                                   type: 'Point',
                                   coordinates: [
                                     24.6798036,
                                     60.221018501673875
                                   ]
                                 }
                               })

      expect(sight.name).to eq('Glims')
      expect(sight.address).to eq('Glimsintie 1, 02740 Espoo, Finland')
      expect(sight.place_id).to eq('51fcb3d59b07ae384059074092554a1c4e40f00103f9019458970300000000920305476c696d73')
    end
  end
end
