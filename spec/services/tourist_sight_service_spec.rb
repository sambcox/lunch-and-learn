require 'rails_helper'

RSpec.describe 'Tourist Sight Service' do
  describe 'class methods', :vcr do
    it 'returns all tourist sights for a given longitude and latitude' do
      sights = TouristSightService.find_sights('24.93,60.17')

      expect(sights).to eq({
                             "type": 'FeatureCollection',
                             "features": [
                               {
                                 "type": 'Feature',
                                 "properties": {
                                   "name": 'Glims',
                                   "country": 'Finland',
                                   "country_code": 'fi',
                                   "state": 'Mainland Finland',
                                   "state_district": 'Southern Finland',
                                   "county": 'Uusimaa',
                                   "city": 'Espoo',
                                   "municipality": 'Helsinki sub-region',
                                   "postcode": '02740',
                                   "district": 'Vanha-Espoo',
                                   "neighbourhood": 'Karvasmäki',
                                   "suburb": 'Karvasmäki',
                                   "street": 'Glimsintie',
                                   "housenumber": '1',
                                   "lon": 24.6798036,
                                   "lat": 60.2210185,
                                   "formatted": 'Glimsintie 1, 02740 Espoo, Finland',
                                   "address_line1": 'Glimsintie 1',
                                   "address_line2": '02740 Espoo, Finland',
                                   "categories": [
                                     'entertainment',
                                     'entertainment.museum',
                                     'tourism',
                                     'tourism.sights'
                                   ],
                                   "details": [
                                     'details',
                                     'details.contact'
                                   ],
                                   "datasource": {
                                     "sourcename": 'openstreetmap',
                                     "attribution": '© OpenStreetMap contributors',
                                     "license": 'Open Database Licence',
                                     "url": 'https://www.openstreetmap.org/copyright',
                                     "raw": {
                                       "name": 'Glims',
                                       "phone": '+358 9 816 27337',
                                       "osm_id": 60_250_260,
                                       "tourism": 'museum',
                                       "website": 'http://www.espoonkaupunginmuseo.fi/fi-FI/Talomuseo_Glims',
                                       "historic": 'farm',
                                       "osm_type": 'n',
                                       "addr:city": 'Espoo',
                                       "addr:street": 'Glimsintie',
                                       "addr:postcode": '02740',
                                       "opening_hours": 'Tu-Fr 10:00-16:00; Su 11:00-16:00',
                                       "addr:housenumber": 1
                                     }
                                   },
                                   "place_id": '51fcb3d59b07ae384059074092554a1c4e40f00103f9019458970300000000920305476c696d73'
                                 },
                                 "geometry": {
                                   "type": 'Point',
                                   "coordinates": [
                                     24.6798036,
                                     60.221018501673875
                                   ]
                                 }
                               },
                               {
                                 "type": 'Feature',
                                 "properties": {
                                   "name": 'Vesikko',
                                   "country": 'Finland',
                                   "country_code": 'fi',
                                   "state": 'Mainland Finland',
                                   "state_district": 'Southern Finland',
                                   "county": 'Uusimaa',
                                   "city": 'Helsinki',
                                   "municipality": 'Helsinki sub-region',
                                   "postcode": '00190',
                                   "district": 'Southern major district',
                                   "suburb": 'Suomenlinna',
                                   "street": 'Poliisikoulun tunneli',
                                   "housenumber": 'B 79',
                                   "lon": 24.989601152124184,
                                   "lat": 60.142547,
                                   "formatted": 'Vesikko, Poliisikoulun tunneli B 79, 00190 Helsinki, Finland',
                                   "address_line1": 'Vesikko',
                                   "address_line2": 'Poliisikoulun tunneli B 79, 00190 Helsinki, Finland',
                                   "categories": [
                                     'building',
                                     'building.historic',
                                     'building.tourism',
                                     'entertainment',
                                     'entertainment.museum',
                                     'fee',
                                     'tourism',
                                     'tourism.sights',
                                     'tourism.sights.memorial',
                                     'tourism.sights.memorial.ship'
                                   ],
                                   "details": [
                                     'details',
                                     'details.building',
                                     'details.facilities',
                                     'details.historic',
                                     'details.wiki_and_media'
                                   ],
                                   "datasource": {
                                     "sourcename": 'openstreetmap',
                                     "attribution": '© OpenStreetMap contributors',
                                     "license": 'Open Database Licence',
                                     "url": 'https://www.openstreetmap.org/copyright',
                                     "raw": {
                                       "fee": 'yes',
                                       "name": 'Vesikko',
                                       "osm_id": 123_034_962,
                                       "tourism": 'museum',
                                       "website": 'https://sotamuseo.fi/sukellusvene-vesikko',
                                       "building": 'yes',
                                       "historic": 'ship',
                                       "osm_type": 'w',
                                       "wikidata": 'Q1312530',
                                       "addr:city": 'Helsinki',
                                       "fee:adult": '5€',
                                       "ship:type": 'submarine',
                                       "wikipedia": 'fi:Sukellusvene Vesikko',
                                       "fee:family": '12€',
                                       "start_date": 1933,
                                       "wheelchair": 'no',
                                       "addr:street": 'Suomenlinna',
                                       "fee:student": '3€',
                                       "addr:postcode": '00190',
                                       "opening_hours": 'PH,Mo-Su 11:00-18:00',
                                       "addr:housenumber": 'B 79'
                                     }
                                   },
                                   "place_id": '51d4c5d99d56fd38405946c1845d3f124e40f00102f901525d550700000000920307566573696b6b6f'
                                 },
                                 "geometry": {
                                   "type": 'Point',
                                   "coordinates": [
                                     24.989602914492778,
                                     60.142558755704655
                                   ]
                                 }
                               },
                               {
                                 "type": 'Feature',
                                 "properties": {
                                   "name": 'Katkaistu elämä / Sankarihauta',
                                   "country": 'Finland',
                                   "country_code": 'fi',
                                   "state": 'Mainland Finland',
                                   "state_district": 'Southern Finland',
                                   "county": 'Uusimaa',
                                   "city": 'Helsinki',
                                   "municipality": 'Helsinki sub-region',
                                   "postcode": '00200',
                                   "district": 'Southern major district',
                                   "neighbourhood": 'Myllykallio',
                                   "suburb": 'Lauttasaari',
                                   "street": 'Isokaari',
                                   "lon": 24.8724413,
                                   "lat": 60.1584175,
                                   "formatted": 'Life Cut Short / War grave, Isokaari, 00200 Helsinki, Finland',
                                   "address_line1": 'Life Cut Short / War grave',
                                   "address_line2": 'Isokaari, 00200 Helsinki, Finland',
                                   "categories": [
                                     'tourism',
                                     'tourism.sights',
                                     'tourism.sights.memorial'
                                   ],
                                   "details": [
                                     'details',
                                     'details.artwork',
                                     'details.historic',
                                     'details.wiki_and_media'
                                   ],
                                   "datasource": {
                                     "sourcename": 'openstreetmap',
                                     "attribution": '© OpenStreetMap contributors',
                                     "license": 'Open Database Licence',
                                     "url": 'https://www.openstreetmap.org/copyright',
                                     "raw": {
                                       "name": 'Katkaistu elämä / Sankarihauta',
                                       "image": 'https://www.hel.fi/static/taimu/Kuvat/veistokset/katkaistu_elama.jpg',
                                       "osm_id": 4_062_562_200,
                                       "name:en": 'Life Cut Short / War grave',
                                       "name:fi": 'Katkaistu elämä / Sankarihauta',
                                       "name:sv": 'Det avbrutna livet / Hjältegrav',
                                       "website": 'https://www.hamhelsinki.fi/sculpture/katkaistu-elama-sankarihauta-aimo-tukiainen',
                                       "alt_name": 'Katkennut kasvu',
                                       "historic": 'memorial',
                                       "memorial": 'war_memorial',
                                       "osm_type": 'n',
                                       "wikidata": 'Q105621860',
                                       "artist_name": 'Aimo Tukiainen',
                                       "inscription": 'Memorial and war grave of soldiers fallen during the World War II. Sculpture by Aimo Tukiainen, 1973.',
                                       "artwork_type": 'sculpture'
                                     }
                                   },
                                   "place_id": '51012e235058df384059745f520647144e40f00103f90198c725f2000000009203204b61746b616973747520656cc3a46dc3a4202f2053616e6b6172696861757461'
                                 },
                                 "geometry": {
                                   "type": 'Point',
                                   "coordinates": [
                                     24.872441299999995,
                                     60.158417501660466
                                   ]
                                 }
                               },
                               {
                                 "type": 'Feature',
                                 "properties": {
                                   "name": 'Herttoniemen kartano',
                                   "country": 'Finland',
                                   "country_code": 'fi',
                                   "state": 'Mainland Finland',
                                   "state_district": 'Southern Finland',
                                   "county": 'Uusimaa',
                                   "city": 'Helsinki',
                                   "municipality": 'Helsinki sub-region',
                                   "postcode": '00880',
                                   "district": 'Southeastern major district',
                                   "neighbourhood": 'Herttoniemenranta',
                                   "suburb": 'Herttoniemi',
                                   "street": 'Linnanrakentajantie',
                                   "housenumber": '12',
                                   "lon": 25.041813381072192,
                                   "lat": 60.190100650000005,
                                   "formatted": 'Herttoniemen kartano, Linnanrakentajantie 12, 00880 Helsinki, Finland',
                                   "address_line1": 'Herttoniemen kartano',
                                   "address_line2": 'Linnanrakentajantie 12, 00880 Helsinki, Finland',
                                   "categories": [
                                     'building',
                                     'building.historic',
                                     'tourism',
                                     'tourism.sights',
                                     'wheelchair',
                                     'wheelchair.limited'
                                   ],
                                   "details": [
                                     'details',
                                     'details.building',
                                     'details.facilities',
                                     'details.historic',
                                     'details.wiki_and_media'
                                   ],
                                   "datasource": {
                                     "sourcename": 'openstreetmap',
                                     "attribution": '© OpenStreetMap contributors',
                                     "license": 'Open Database Licence',
                                     "url": 'https://www.openstreetmap.org/copyright',
                                     "raw": {
                                       "name": 'Herttoniemen kartano',
                                       "osm_id": 16_291_718,
                                       "name:fi": 'Herttoniemen kartano',
                                       "name:sv": 'Hertonäs gård',
                                       "website": 'https://hertonasgard.fi/fi/alku/',
                                       "building": 'yes',
                                       "historic": 'manor',
                                       "osm_type": 'w',
                                       "wikidata": 'Q11862462',
                                       "wikipedia": 'fi:Herttoniemen kartano',
                                       "start_date": 'before 1795',
                                       "wheelchair": 'limited',
                                       "addr:street": 'Linnanrakentajantie',
                                       "addr:housenumber": 12
                                     }
                                   },
                                   "place_id": '51b772cca7b40a394059b28c4d2955184e40f00102f9018697f8000000000092031448657274746f6e69656d656e206b617274616e6f'
                                 },
                                 "geometry": {
                                   "type": 'Point',
                                   "coordinates": [
                                     25.04181908360871,
                                     60.19009891783334
                                   ]
                                 }
                               },
                               {
                                 "type": 'Feature',
                                 "properties": {
                                   "name": 'Sibelius-monumentti',
                                   "country": 'Finland',
                                   "country_code": 'fi',
                                   "state": 'Mainland Finland',
                                   "state_district": 'Southern Finland',
                                   "county": 'Uusimaa',
                                   "city": 'Helsinki',
                                   "municipality": 'Helsinki sub-region',
                                   "postcode": '00250',
                                   "district": 'Southern major district',
                                   "suburb": 'Töölö',
                                   "street": 'Merikannontie',
                                   "lon": 24.9134171,
                                   "lat": 60.1820272,
                                   "formatted": 'Sibelius Monument, Merikannontie, 00250 Helsinki, Finland',
                                   "address_line1": 'Sibelius Monument',
                                   "address_line2": 'Merikannontie, 00250 Helsinki, Finland',
                                   "categories": [
                                     'access',
                                     'access.yes',
                                     'tourism',
                                     'tourism.sights',
                                     'tourism.sights.memorial',
                                     'tourism.sights.memorial.monument'
                                   ],
                                   "details": [
                                     'details',
                                     'details.artwork',
                                     'details.historic',
                                     'details.wiki_and_media'
                                   ],
                                   "datasource": {
                                     "sourcename": 'openstreetmap',
                                     "attribution": '© OpenStreetMap contributors',
                                     "license": 'Open Database Licence',
                                     "url": 'https://www.openstreetmap.org/copyright',
                                     "raw": {
                                       "name": 'Sibelius-monumentti',
                                       "access": 'yes',
                                       "osm_id": 25_290_864,
                                       "name:ca": 'Monument Sibelius',
                                       "name:en": 'Sibelius Monument',
                                       "name:fi": 'Sibelius-monumentti',
                                       "name:ja": 'シベリウス像',
                                       "name:ru": 'Памятник Сибелиусу',
                                       "name:sv": 'Sibeliusmonumentet',
                                       "name:zh": '西貝柳斯紀念碑',
                                       "website": 'https://www.hamhelsinki.fi/en/sculpture/sibelius-monumentti-eila-hiltunen/',
                                       "historic": 'monument',
                                       "int_name": 'Sibelius monument',
                                       "osm_type": 'n',
                                       "wikidata": 'Q2584017',
                                       "addr:city": 'Helsinki',
                                       "wikipedia": 'fi:Sibelius-monumentti',
                                       "start_date": 1967,
                                       "alt_name:en": 'Sibelius Sculpture',
                                       "artist_name": 'Eila Hiltunen',
                                       "inscription": 'Memorial of Jean Sibelius (1865-1957), Finnish national composer. Sculpture by Eila Hiltunen,1967.',
                                       "addr:country": 'FI',
                                       "artwork_type": 'sculpture'
                                     }
                                   },
                                   "place_id": '516e1bfcb3d5e93840597211d7aa4c174e40f00103f90170e8810100000000920313536962656c6975732d6d6f6e756d656e747469'
                                 },
                                 "geometry": {
                                   "type": 'Point',
                                   "coordinates": [
                                     24.913417099999997,
                                     60.18202720166563
                                   ]
                                 }
                               },
                               {
                                 "type": 'Feature',
                                 "properties": {
                                   "name": 'Punainen huvila',
                                   "country": 'Finland',
                                   "country_code": 'fi',
                                   "state": 'Mainland Finland',
                                   "state_district": 'Southern Finland',
                                   "county": 'Uusimaa',
                                   "city": 'Helsinki',
                                   "municipality": 'Helsinki sub-region',
                                   "postcode": '00200',
                                   "district": 'Southern major district',
                                   "neighbourhood": 'Kotkavuori',
                                   "suburb": 'Lauttasaari',
                                   "street": 'Kauppaneuvoksentie',
                                   "housenumber": '18',
                                   "lon": 24.87921321438356,
                                   "lat": 60.15962275,
                                   "formatted": 'Punainen huvila, Kauppaneuvoksentie 18, 00200 Helsinki, Finland',
                                   "address_line1": 'Punainen huvila',
                                   "address_line2": 'Kauppaneuvoksentie 18, 00200 Helsinki, Finland',
                                   "categories": [
                                     'building',
                                     'building.historic',
                                     'building.office',
                                     'tourism',
                                     'tourism.sights'
                                   ],
                                   "details": [
                                     'details',
                                     'details.building',
                                     'details.historic',
                                     'details.wiki_and_media'
                                   ],
                                   "datasource": {
                                     "sourcename": 'openstreetmap',
                                     "attribution": '© OpenStreetMap contributors',
                                     "license": 'Open Database Licence',
                                     "url": 'https://www.openstreetmap.org/copyright',
                                     "raw": {
                                       "name": 'Punainen huvila',
                                       "layer": 1,
                                       "osm_id": 29_993_852,
                                       "building": 'office',
                                       "historic": 'manor',
                                       "operator": 'Lauttasaaren seura',
                                       "osm_type": 'w',
                                       "wikidata": 'Q98418412',
                                       "addr:city": 'Helsinki',
                                       "start_date": 1791,
                                       "addr:street": 'Kauppaneuvoksentie',
                                       "addr:postcode": '00200',
                                       "opening_hours": 'Mo 09:30-16:30',
                                       "building:levels": 2,
                                       "addr:housenumber": 18
                                     }
                                   },
                                   "place_id": '513defa6ac14e1384059a5f7802a6d144e40f00102f9017cabc9010000000092030f50756e61696e656e20687576696c61'
                                 },
                                 "geometry": {
                                   "type": 'Point',
                                   "coordinates": [
                                     24.879221716647624,
                                     60.159581482860894
                                   ]
                                 }
                               },
                               {
                                 "type": 'Feature',
                                 "properties": {
                                   "name": 'Pakin talo',
                                   "country": 'Finland',
                                   "country_code": 'fi',
                                   "state": 'Mainland Finland',
                                   "state_district": 'Southern Finland',
                                   "county": 'Uusimaa',
                                   "city": 'Helsinki',
                                   "municipality": 'Helsinki sub-region',
                                   "postcode": '00680',
                                   "district": 'Northern major district',
                                   "neighbourhood": 'Itä-Pakila',
                                   "suburb": 'Pakila',
                                   "street": 'Etupellontie',
                                   "housenumber": '2',
                                   "lon": 24.964664830423942,
                                   "lat": 60.243511850000004,
                                   "formatted": 'Pakin talo, Etupellontie 2, 00680 Helsinki, Finland',
                                   "address_line1": 'Pakin talo',
                                   "address_line2": 'Etupellontie 2, 00680 Helsinki, Finland',
                                   "categories": [
                                     'building',
                                     'building.historic',
                                     'tourism',
                                     'tourism.sights'
                                   ],
                                   "details": [
                                     'details',
                                     'details.contact'
                                   ],
                                   "datasource": {
                                     "sourcename": 'openstreetmap',
                                     "attribution": '© OpenStreetMap contributors',
                                     "license": 'Open Database Licence',
                                     "url": 'https://www.openstreetmap.org/copyright',
                                     "raw": {
                                       "name": 'Pakin talo',
                                       "phone": '+358-50-3520060',
                                       "osm_id": 30_595_040,
                                       "website": 'https://kaupunginosat.net/pakila/pakila-seura-ry/pakin-talo',
                                       "building": 'yes',
                                       "historic": 'house',
                                       "osm_type": 'w',
                                       "addr:city": 'Helsinki',
                                       "addr:street": 'Etupellontie',
                                       "description": 'Vuokrattava juhlatila historiallisessa 1700-luvulta peräisin olevassa hirsirakenteisessa maalaistalomiljöössä.',
                                       "addr:postcode": '00680',
                                       "addr:housenumber": 2
                                     }
                                   },
                                   "place_id": '510a1a53b5f4f6384059eb34d6782c1f4e40f00102f901e0d7d2010000000092030a50616b696e2074616c6f'
                                 },
                                 "geometry": {
                                   "type": 'Point',
                                   "coordinates": [
                                     24.96467145232058,
                                     60.24354467830002
                                   ]
                                 }
                               },
                               {
                                 "type": 'Feature',
                                 "properties": {
                                   "name": 'Marsalkka Mannerheimin ratsastajapatsas',
                                   "country": 'Finland',
                                   "country_code": 'fi',
                                   "state": 'Mainland Finland',
                                   "state_district": 'Southern Finland',
                                   "county": 'Uusimaa',
                                   "city": 'Helsinki',
                                   "municipality": 'Helsinki sub-region',
                                   "postcode": '00100',
                                   "district": 'Southern major district',
                                   "suburb": 'City Centre',
                                   "street": 'Mannerheimin aukio',
                                   "lon": 24.93630055,
                                   "lat": 60.17158965,
                                   "formatted": 'Marsalkka Mannerheimin ratsastajapatsas, Mannerheimin aukio, 00100 Helsinki, Finland',
                                   "address_line1": 'Marsalkka Mannerheimin ratsastajapatsas',
                                   "address_line2": 'Mannerheimin aukio, 00100 Helsinki, Finland',
                                   "categories": [
                                     'tourism',
                                     'tourism.sights',
                                     'tourism.sights.memorial',
                                     'wheelchair',
                                     'wheelchair.yes'
                                   ],
                                   "details": [
                                     'details',
                                     'details.artwork',
                                     'details.facilities',
                                     'details.historic',
                                     'details.wiki_and_media'
                                   ],
                                   "datasource": {
                                     "sourcename": 'openstreetmap',
                                     "attribution": '© OpenStreetMap contributors',
                                     "license": 'Open Database Licence',
                                     "url": 'https://www.openstreetmap.org/copyright',
                                     "raw": {
                                       "name": 'Marsalkka Mannerheimin ratsastajapatsas',
                                       "height": 11.7,
                                       "osm_id": 59_148_128,
                                       "date_on": '1960-06-04',
                                       "name:fi": 'Marsalkka Mannerheimin ratsastajapatsas',
                                       "name:sv": 'Marskalk Mannerheims ryttarstaty',
                                       "website": 'https://www.hamhelsinki.fi/sculpture/marsalkka-mannerheimin-ratsastajapatsas-aimo-tukiainen',
                                       "historic": 'memorial',
                                       "loc_name": 'Marskin patsas',
                                       "memorial": 'statue',
                                       "osm_type": 'w',
                                       "sculptor": 'Aimo Tukiainen',
                                       "wikidata": 'Q2511913',
                                       "wikipedia": 'fi:Marsalkka Mannerheimin ratsastajapatsas',
                                       "start_date": 1960,
                                       "wheelchair": 'yes',
                                       "artist_name": 'Aimo Tukiainen',
                                       "inscription": 'Memorial to Baron Carl Gustav Emil Mannerheim (1867-1951), Marshal of Finland and the sixth president of the Republic of Finland (1944-46). Equestrian statue by Aimo Tukiainen, 1960.',
                                       "artwork_type": 'statue'
                                     }
                                   },
                                   "place_id": '51107a9164b1ef384059f21c53a6f6154e40f00102f90160878603000000009203274d617273616c6b6b61204d616e6e65726865696d696e2072617473617374616a61706174736173'
                                 },
                                 "geometry": {
                                   "type": 'Point',
                                   "coordinates": [
                                     24.93630055,
                                     60.17158965166335
                                   ]
                                 }
                               },
                               {
                                 "type": 'Feature',
                                 "properties": {
                                   "name": 'Aleksis Kiven muistopatsas',
                                   "country": 'Finland',
                                   "country_code": 'fi',
                                   "state": 'Mainland Finland',
                                   "state_district": 'Southern Finland',
                                   "county": 'Uusimaa',
                                   "city": 'Helsinki',
                                   "municipality": 'Helsinki sub-region',
                                   "postcode": '00100',
                                   "district": 'Southern major district',
                                   "suburb": 'Kaisaniemi',
                                   "street": 'Rautatientori',
                                   "lon": 24.9439197,
                                   "lat": 60.1716831,
                                   "formatted": 'Aleksis Kivi Memorial, Rautatientori, 00100 Helsinki, Finland',
                                   "address_line1": 'Aleksis Kivi Memorial',
                                   "address_line2": 'Rautatientori, 00100 Helsinki, Finland',
                                   "categories": [
                                     'tourism',
                                     'tourism.attraction',
                                     'tourism.attraction.artwork',
                                     'tourism.sights',
                                     'tourism.sights.memorial',
                                     'wheelchair',
                                     'wheelchair.yes'
                                   ],
                                   "details": [
                                     'details',
                                     'details.artwork',
                                     'details.facilities',
                                     'details.historic',
                                     'details.wiki_and_media'
                                   ],
                                   "datasource": {
                                     "sourcename": 'openstreetmap',
                                     "attribution": '© OpenStreetMap contributors',
                                     "license": 'Open Database Licence',
                                     "url": 'https://www.openstreetmap.org/copyright',
                                     "raw": {
                                       "name": 'Aleksis Kiven muistopatsas',
                                       "osm_id": 60_131_847,
                                       "name:en": 'Aleksis Kivi Memorial',
                                       "name:fi": 'Aleksis Kiven muistopatsas',
                                       "name:sv": 'Aleksis Kivi',
                                       "tourism": 'artwork',
                                       "website": 'https://www.hamhelsinki.fi/sculpture/aleksis-kiven-muistopatsas-waino-aaltonen/',
                                       "alt_name": 'Aleksis Kiven patsas',
                                       "historic": 'memorial',
                                       "memorial": 'statue',
                                       "osm_type": 'n',
                                       "wikidata": 'Q11850731',
                                       "addr:city": 'Helsinki',
                                       "wikipedia": 'fi:Aleksis Kiven muistopatsas',
                                       "start_date": 1939,
                                       "wheelchair": 'yes',
                                       "addr:street": 'Rautatientori, Vilhonkatu',
                                       "artist_name": 'Wäinö Aaltonen',
                                       "inscription": 'Memorial to Aleksis Kivi (1834-1872), national author of Finland. Statue by Wäinö Aaltonen, 1939.',
                                       "addr:postcode": '00100',
                                       "wheelchair:description": 'This bronze statue was made by Mr Wäinö Aaltonen in 1939.'
                                     }
                                   },
                                   "place_id": '51d48cb1b8a4f1384059c2753db6f9154e40f00103f901078a95030000000092031a416c656b736973204b6976656e206d756973746f706174736173'
                                 },
                                 "geometry": {
                                   "type": 'Point',
                                   "coordinates": [
                                     24.943919699999995,
                                     60.17168310166336
                                   ]
                                 }
                               },
                               {
                                 "type": 'Feature',
                                 "properties": {
                                   "name": 'Merenkulkijoiden ja mereen menehtyneiden muistomerkki',
                                   "old_name": 'Merenkulun muistomerkki',
                                   "country": 'Finland',
                                   "country_code": 'fi',
                                   "state": 'Mainland Finland',
                                   "state_district": 'Southern Finland',
                                   "county": 'Uusimaa',
                                   "city": 'Helsinki',
                                   "municipality": 'Helsinki sub-region',
                                   "postcode": '00150',
                                   "district": 'Southern major district',
                                   "neighbourhood": 'Hernesaari',
                                   "suburb": 'Eira',
                                   "street": 'Eiranranta',
                                   "lon": 24.9384321,
                                   "lat": 60.1540912,
                                   "formatted": 'Memorial for Seafarers, Eiranranta, 00150 Helsinki, Finland',
                                   "address_line1": 'Memorial for Seafarers',
                                   "address_line2": 'Eiranranta, 00150 Helsinki, Finland',
                                   "categories": [
                                     'tourism',
                                     'tourism.sights',
                                     'tourism.sights.memorial',
                                     'tourism.sights.memorial.monument'
                                   ],
                                   "details": [
                                     'details',
                                     'details.artwork',
                                     'details.historic',
                                     'details.wiki_and_media'
                                   ],
                                   "datasource": {
                                     "sourcename": 'openstreetmap',
                                     "attribution": '© OpenStreetMap contributors',
                                     "license": 'Open Database Licence',
                                     "url": 'https://www.openstreetmap.org/copyright',
                                     "raw": {
                                       "name": 'Merenkulkijoiden ja mereen menehtyneiden muistomerkki',
                                       "osm_id": 60_242_198,
                                       "name:en": 'Memorial for Seafarers',
                                       "name:fi": 'Merenkulkijoiden ja mereen menehtyneiden muistomerkki',
                                       "name:sv": 'Sjöfartens minnesmärke',
                                       "website": 'https://www.hamhelsinki.fi/en/sculpture/merenkulkijoiden-ja-mereen-menehtyneiden-muistomerkki-eero-eerikainen-oskari-jauhiainen/',
                                       "historic": 'monument',
                                       "loc_name": 'Ikuinen tuli',
                                       "old_name": 'Merenkulun muistomerkki',
                                       "osm_type": 'n',
                                       "wikidata": 'Q11882089',
                                       "wikipedia": 'fi:Merenkulkijoiden ja mereen menehtyneiden muistomerkki',
                                       "start_date": 1968,
                                       "artist_name": 'Eero Eerikäinen;Oskari Jauhiainen',
                                       "inscription": 'Memorial to Finnish seafarers. Designed by sculptor Oskari Jauhiainen and architecht Eero Eerikäinen, 1968.',
                                       "artwork_type": 'sculpture'
                                     }
                                   },
                                   "place_id": '513f040b163df03840594cddaf42b9134e40f00103f90116399703000000009203354d6572656e6b756c6b696a6f6964656e206a61206d657265656e206d656e656874796e656964656e206d756973746f6d65726b6b69'
                                 },
                                 "geometry": {
                                   "type": 'Point',
                                   "coordinates": [
                                     24.938432099999996,
                                     60.1540912016595
                                   ]
                                 }
                               },
                               {
                                 "type": 'Feature',
                                 "properties": {
                                   "name": 'Oittaan kartano',
                                   "country": 'Finland',
                                   "country_code": 'fi',
                                   "state": 'Mainland Finland',
                                   "state_district": 'Southern Finland',
                                   "county": 'Uusimaa',
                                   "city": 'Espoo',
                                   "municipality": 'Helsinki sub-region',
                                   "postcode": '02740',
                                   "district": 'Vanha-Espoo',
                                   "neighbourhood": 'Karhusuo',
                                   "suburb": 'Karhusuo',
                                   "street": 'Oittaan luontopolku',
                                   "lon": 24.657467146282244,
                                   "lat": 60.2425748,
                                   "formatted": 'Oittaan kartano, Oittaan luontopolku, 02740 Espoo, Finland',
                                   "address_line1": 'Oittaan kartano',
                                   "address_line2": 'Oittaan luontopolku, 02740 Espoo, Finland',
                                   "categories": [
                                     'building',
                                     'building.historic',
                                     'tourism',
                                     'tourism.sights'
                                   ],
                                   "details": [
                                     'details',
                                     'details.building',
                                     'details.historic',
                                     'details.wiki_and_media'
                                   ],
                                   "datasource": {
                                     "sourcename": 'openstreetmap',
                                     "attribution": '© OpenStreetMap contributors',
                                     "license": 'Open Database Licence',
                                     "url": 'https://www.openstreetmap.org/copyright',
                                     "raw": {
                                       "name": 'Oittaan kartano',
                                       "osm_id": 76_225_960,
                                       "name:fi": 'Oittaan kartano',
                                       "name:sv": 'Oitans gård',
                                       "website": 'http://www.oittaa.fi/',
                                       "building": 'yes',
                                       "historic": 'manor',
                                       "osm_type": 'w',
                                       "wikidata": 'Q97340998',
                                       "roof:shape": 'hipped',
                                       "start_date": 1916,
                                       "roof:colour": 'black',
                                       "roof:material": 'metal',
                                       "building:colour": 'LightSkyBlue',
                                       "building:levels": 2,
                                       "building:material": 'wood'
                                     }
                                   },
                                   "place_id": '51cef271e44ea8384059cafcc0ce0c1f4e40f00102f901a81d8b040000000092030f4f69747461616e206b617274616e6f'
                                 },
                                 "geometry": {
                                   "type": 'Point',
                                   "coordinates": [
                                     24.657453801936576,
                                     60.242578357917935
                                   ]
                                 }
                               },
                               {
                                 "type": 'Feature',
                                 "properties": {
                                   "name": 'Espoon kartano',
                                   "country": 'Finland',
                                   "country_code": 'fi',
                                   "state": 'Mainland Finland',
                                   "state_district": 'Southern Finland',
                                   "county": 'Uusimaa',
                                   "city": 'Espoo',
                                   "municipality": 'Helsinki sub-region',
                                   "postcode": '02870',
                                   "district": 'Suur-Kauklahti',
                                   "neighbourhood": 'Espoonkartano',
                                   "suburb": 'Espoonkartano',
                                   "street": 'Kuninkaankartanontie',
                                   "housenumber": '31',
                                   "lon": 24.58264114915792,
                                   "lat": 60.1989899,
                                   "formatted": 'Espoon kartano, Kuninkaankartanontie 31, 02870 Espoo, Finland',
                                   "address_line1": 'Espoon kartano',
                                   "address_line2": 'Kuninkaankartanontie 31, 02870 Espoo, Finland',
                                   "categories": [
                                     'building',
                                     'building.historic',
                                     'tourism',
                                     'tourism.sights'
                                   ],
                                   "details": [
                                     'details',
                                     'details.building',
                                     'details.historic',
                                     'details.wiki_and_media'
                                   ],
                                   "datasource": {
                                     "sourcename": 'openstreetmap',
                                     "attribution": '© OpenStreetMap contributors',
                                     "license": 'Open Database Licence',
                                     "url": 'https://www.openstreetmap.org/copyright',
                                     "raw": {
                                       "name": 'Espoon kartano',
                                       "osm_id": 84_595_049,
                                       "name:fi": 'Espoon kartano',
                                       "name:sv": 'Esbo gård',
                                       "website": 'http://www.esbogard.fi/',
                                       "building": 'yes',
                                       "historic": 'manor',
                                       "osm_type": 'w',
                                       "wikidata": 'Q276946',
                                       "wikipedia": 'fi:Espoon kartano',
                                       "start_date": 1797,
                                       "addr:street": 'Kuninkaankartanontie',
                                       "addr:housenumber": 31
                                     }
                                   },
                                   "place_id": '5115d04941269538405909a7f98379194e40f00102f90169d10a050000000092030e4573706f6f6e206b617274616e6f'
                                 },
                                 "geometry": {
                                   "type": 'Point',
                                   "coordinates": [
                                     24.582614975472172,
                                     60.19902085962355
                                   ]
                                 }
                               },
                               {
                                 "type": 'Feature',
                                 "properties": {
                                   "name": 'Albergan kartano',
                                   "country": 'Finland',
                                   "country_code": 'fi',
                                   "state": 'Mainland Finland',
                                   "state_district": 'Southern Finland',
                                   "county": 'Uusimaa',
                                   "city": 'Espoo',
                                   "municipality": 'Helsinki sub-region',
                                   "postcode": '02600',
                                   "district": 'Suur-Leppävaara',
                                   "neighbourhood": 'Säteri',
                                   "suburb": 'Leppävaara',
                                   "street": 'Sokerilinnantie',
                                   "housenumber": '7',
                                   "lon": 24.813913957179278,
                                   "lat": 60.21427425,
                                   "formatted": 'Albergan kartano, Sokerilinnantie 7, 02600 Espoo, Finland',
                                   "address_line1": 'Albergan kartano',
                                   "address_line2": 'Sokerilinnantie 7, 02600 Espoo, Finland',
                                   "categories": [
                                     'building',
                                     'building.historic',
                                     'building.tourism',
                                     'tourism',
                                     'tourism.attraction',
                                     'tourism.sights'
                                   ],
                                   "details": [
                                     'details',
                                     'details.building',
                                     'details.historic',
                                     'details.wiki_and_media'
                                   ],
                                   "datasource": {
                                     "sourcename": 'openstreetmap',
                                     "attribution": '© OpenStreetMap contributors',
                                     "license": 'Open Database Licence',
                                     "url": 'https://www.openstreetmap.org/copyright',
                                     "raw": {
                                       "name": 'Albergan kartano',
                                       "osm_id": 94_588_263,
                                       "tourism": 'attraction',
                                       "website": 'https://www.visitespoo.fi/fi/palvelu/albergan-kartano/',
                                       "building": 'yes',
                                       "historic": 'manor',
                                       "osm_type": 'w',
                                       "wikidata": 'Q276856',
                                       "addr:city": 'Espoo',
                                       "wikipedia": 'fi:Albergan kartano',
                                       "start_date": '1874..1876',
                                       "addr:street": 'Sokerilinnantie',
                                       "addr:postcode": '02600',
                                       "building:levels": 2,
                                       "addr:housenumber": 7
                                     }
                                   },
                                   "place_id": '517b8247a95cd0384059f73dbc896c1b4e40f00102f901674da30500000000920310416c62657267616e206b617274616e6f'
                                 },
                                 "geometry": {
                                   "type": 'Point',
                                   "coordinates": [
                                     24.813913898428364,
                                     60.214249817767204
                                   ]
                                 }
                               },
                               {
                                 "type": 'Feature',
                                 "properties": {
                                   "name": 'Villa Pentry',
                                   "country": 'Finland',
                                   "country_code": 'fi',
                                   "state": 'Mainland Finland',
                                   "state_district": 'Southern Finland',
                                   "county": 'Uusimaa',
                                   "city": 'Espoo',
                                   "municipality": 'Helsinki sub-region',
                                   "postcode": '02230',
                                   "district": 'Suur-Matinkylä',
                                   "neighbourhood": 'Nuottaniemi',
                                   "suburb": 'Matinkylä',
                                   "street": 'Nuottarinne',
                                   "housenumber": '2',
                                   "lon": 24.736199345511587,
                                   "lat": 60.1451589,
                                   "formatted": 'Villa Pentry, Nuottarinne 2, 02230 Espoo, Finland',
                                   "address_line1": 'Villa Pentry',
                                   "address_line2": 'Nuottarinne 2, 02230 Espoo, Finland',
                                   "categories": [
                                     'building',
                                     'building.catering',
                                     'building.commercial',
                                     'building.historic',
                                     'catering',
                                     'catering.restaurant',
                                     'tourism',
                                     'tourism.sights'
                                   ],
                                   "details": [
                                     'details',
                                     'details.building',
                                     'details.catering'
                                   ],
                                   "datasource": {
                                     "sourcename": 'openstreetmap',
                                     "attribution": '© OpenStreetMap contributors',
                                     "license": 'Open Database Licence',
                                     "url": 'https://www.openstreetmap.org/copyright',
                                     "raw": {
                                       "name": 'Villa Pentry',
                                       "osm_id": 111_348_105,
                                       "amenity": 'restaurant',
                                       "website": 'http://www.villapentry.fi',
                                       "building": 'commercial',
                                       "historic": 'villa',
                                       "osm_type": 'w',
                                       "diet:halal": 'no',
                                       "addr:street": 'Nuottarinne',
                                       "diet:kosher": 'no',
                                       "roof:levels": 1,
                                       "opening_hours": 'Mo-Fr 11:00-15:00',
                                       "building:levels": 1,
                                       "addr:housenumber": 2
                                     }
                                   },
                                   "place_id": '5152e57cff77bc384059ef79b2b894124e40f00102f9018909a3060000000092030c56696c6c612050656e747279'
                                 },
                                 "geometry": {
                                   "type": 'Point',
                                   "coordinates": [
                                     24.73620602416242,
                                     60.14516361918128
                                   ]
                                 }
                               },
                               {
                                 "type": 'Feature',
                                 "properties": {
                                   "name": 'Ässärykmentin muistomerkki / Jalkaväkirykmentti 11',
                                   "country": 'Finland',
                                   "country_code": 'fi',
                                   "state": 'Mainland Finland',
                                   "state_district": 'Southern Finland',
                                   "county": 'Uusimaa',
                                   "city": 'Helsinki',
                                   "municipality": 'Helsinki sub-region',
                                   "postcode": '00530',
                                   "district": 'Central major district',
                                   "suburb": 'Kallio',
                                   "quarter": 'Torkkelinmäki',
                                   "street": 'Ässänrinne',
                                   "lon": 24.9557632,
                                   "lat": 60.1831087,
                                   "formatted": 'Ässärykmentin muistomerkki / Jalkaväkirykmentti 11, Ässänrinne, 00530 Helsinki, Finland',
                                   "address_line1": 'Ässärykmentin muistomerkki / Jalkaväkirykmentti 11',
                                   "address_line2": 'Ässänrinne, 00530 Helsinki, Finland',
                                   "categories": [
                                     'tourism',
                                     'tourism.sights',
                                     'tourism.sights.memorial'
                                   ],
                                   "details": [
                                     'details',
                                     'details.artwork',
                                     'details.historic',
                                     'details.wiki_and_media'
                                   ],
                                   "datasource": {
                                     "sourcename": 'openstreetmap',
                                     "attribution": '© OpenStreetMap contributors',
                                     "license": 'Open Database Licence',
                                     "url": 'https://www.openstreetmap.org/copyright',
                                     "raw": {
                                       "name": 'Ässärykmentin muistomerkki / Jalkaväkirykmentti 11',
                                       "osm_id": 269_309_406,
                                       "name:fi": 'Ässärykmentin muistomerkki / Jalkaväkirykmentti 11',
                                       "name:sv": 'Ässä-regmentets minnesmärke / JR 11',
                                       "website": 'https://www.hamhelsinki.fi/sculpture/assarykmentin-muistomerkki-jalkavakirykmentti-11-aarre-aaltonen',
                                       "historic": 'memorial',
                                       "memorial": 'obelisk',
                                       "osm_type": 'n',
                                       "sculptor": 'Aarre Aaltonen (1940)',
                                       "wikidata": 'Q42901682',
                                       "start_date": 1940,
                                       "artist_name": 'Aarre Aaltonen',
                                       "inscription": 'Monument commemorating the infantry regiment 11. The obelisk-like monument is sculpted of grey granite by Aarre Aaltonen, 1940.'
                                     }
                                   },
                                   "place_id": '5165b8a6e5acf438405949a21e1b70174e40f00103f901de550d1000000000920335c3847373c3a472796b6d656e74696e206d756973746f6d65726b6b69202f204a616c6b6176c3a46b6972796b6d656e747469203131'
                                 },
                                 "geometry": {
                                   "type": 'Point',
                                   "coordinates": [
                                     24.955763199999996,
                                     60.18310870166585
                                   ]
                                 }
                               },
                               {
                                 "type": 'Feature',
                                 "properties": {
                                   "name": 'Itämeren tytär / Maila Talvion muistomerkki',
                                   "country": 'Finland',
                                   "country_code": 'fi',
                                   "state": 'Mainland Finland',
                                   "state_district": 'Southern Finland',
                                   "county": 'Uusimaa',
                                   "city": 'Helsinki',
                                   "municipality": 'Helsinki sub-region',
                                   "postcode": '00270',
                                   "district": 'Western major district',
                                   "neighbourhood": 'Meilahti',
                                   "suburb": 'Meilahti',
                                   "street": 'Seurasaarentie',
                                   "lon": 24.8949105,
                                   "lat": 60.1869927,
                                   "formatted": 'Daughter of the Baltic Sea / Maila Talvio Memorial, Seurasaarentie, 00270 Helsinki, Finland',
                                   "address_line1": 'Daughter of the Baltic Sea / Maila Talvio Memorial',
                                   "address_line2": 'Seurasaarentie, 00270 Helsinki, Finland',
                                   "categories": [
                                     'tourism',
                                     'tourism.attraction',
                                     'tourism.attraction.artwork',
                                     'tourism.sights',
                                     'tourism.sights.memorial'
                                   ],
                                   "details": [
                                     'details',
                                     'details.artwork',
                                     'details.historic',
                                     'details.wiki_and_media'
                                   ],
                                   "datasource": {
                                     "sourcename": 'openstreetmap',
                                     "attribution": '© OpenStreetMap contributors',
                                     "license": 'Open Database Licence',
                                     "url": 'https://www.openstreetmap.org/copyright',
                                     "raw": {
                                       "name": 'Itämeren tytär / Maila Talvion muistomerkki',
                                       "osm_id": 281_663_991,
                                       "name:en": 'Daughter of the Baltic Sea / Maila Talvio Memorial',
                                       "name:fi": 'Itämeren tytär / Maila Talvion muistomerkki',
                                       "name:sv": 'Östersjöns dotter / Maila Talvios minnesmärke',
                                       "tourism": 'artwork',
                                       "website": 'https://www.hamhelsinki.fi/sculpture/itameren-tytar-maila-talvion-muistomerkki-laila-pullinen',
                                       "historic": 'memorial',
                                       "memorial": 'sculpture',
                                       "osm_type": 'n',
                                       "wikidata": 'Q56402579',
                                       "start_date": 1971,
                                       "artist_name": 'Laila Pullinen',
                                       "inscription": 'Memorial to the author Maila Talvio (1871-1851), the sculpture is named after her historical novel about Helsinki. Sculpture by Laila Pullinen, 1971.',
                                       "artwork_type": 'sculpture'
                                     }
                                   },
                                   "place_id": '51d558c2da18e5384059e21f7960ef174e40f00103f901f7d9c9100000000092032d4974c3a46d6572656e20747974c3a472202f204d61696c612054616c76696f6e206d756973746f6d65726b6b69'
                                 },
                                 "geometry": {
                                   "type": 'Point',
                                   "coordinates": [
                                     24.894910499999998,
                                     60.18699270166668
                                   ]
                                 }
                               },
                               {
                                 "type": 'Feature',
                                 "properties": {
                                   "name": 'Yrittäjäveistos',
                                   "country": 'Finland',
                                   "country_code": 'fi',
                                   "state": 'Mainland Finland',
                                   "state_district": 'Southern Finland',
                                   "county": 'Uusimaa',
                                   "city": 'Helsinki',
                                   "municipality": 'Helsinki sub-region',
                                   "postcode": '00100',
                                   "district": 'Southern major district',
                                   "suburb": 'Kamppi',
                                   "street": 'Narinkkatori',
                                   "lon": 24.9349346,
                                   "lat": 60.1698712,
                                   "formatted": 'Enterpreneurs Monument, Narinkkatori, 00100 Helsinki, Finland',
                                   "address_line1": 'Enterpreneurs Monument',
                                   "address_line2": 'Narinkkatori, 00100 Helsinki, Finland',
                                   "categories": [
                                     'tourism',
                                     'tourism.sights',
                                     'tourism.sights.memorial'
                                   ],
                                   "details": [
                                     'details',
                                     'details.artwork',
                                     'details.historic',
                                     'details.wiki_and_media'
                                   ],
                                   "datasource": {
                                     "sourcename": 'openstreetmap',
                                     "attribution": '© OpenStreetMap contributors',
                                     "license": 'Open Database Licence',
                                     "url": 'https://www.openstreetmap.org/copyright',
                                     "raw": {
                                       "name": 'Yrittäjäveistos',
                                       "osm_id": 289_367_650,
                                       "name:en": 'Enterpreneurs Monument',
                                       "name:fi": 'Yrittäjäveistos',
                                       "name:sv": 'Entreprenör monumentet',
                                       "website": 'https://www.hamhelsinki.fi/sculpture/yrittajaveistos-eva-lofdahl/',
                                       "historic": 'memorial',
                                       "memorial": 'sculpture',
                                       "osm_type": 'n',
                                       "sculptor": 'Eva Löfdahl',
                                       "wikidata": 'Q29364497',
                                       "start_date": '2006-09-05',
                                       "artist_name": 'Eva Löfdahl',
                                       "inscription": 'Monument to to honour and acknowledge Finnish entrepreneurs. Sculpture by Eva Löfdahl, 2006.'
                                     }
                                   },
                                   "place_id": '511ae6badf57ef3840595dd6eb56be154e40f00103f90162663f11000000009203115972697474c3a46ac3a476656973746f73'
                                 },
                                 "geometry": {
                                   "type": 'Point',
                                   "coordinates": [
                                     24.9349346,
                                     60.16987120166298
                                   ]
                                 }
                               },
                               {
                                 "type": 'Feature',
                                 "properties": {
                                   "name": 'Taru ja totuus',
                                   "country": 'Finland',
                                   "country_code": 'fi',
                                   "state": 'Mainland Finland',
                                   "state_district": 'Southern Finland',
                                   "county": 'Uusimaa',
                                   "city": 'Helsinki',
                                   "municipality": 'Helsinki sub-region',
                                   "postcode": '00014',
                                   "district": 'Southern major district',
                                   "suburb": 'Kaartinkaupunki',
                                   "street": 'Pohjoisesplanadi',
                                   "lon": 24.9447989,
                                   "lat": 60.1674697,
                                   "formatted": 'Fact and Fable, Pohjoisesplanadi, 00014 Helsinki, Finland',
                                   "address_line1": 'Fact and Fable',
                                   "address_line2": 'Pohjoisesplanadi, 00014 Helsinki, Finland',
                                   "categories": [
                                     'tourism',
                                     'tourism.sights',
                                     'tourism.sights.memorial'
                                   ],
                                   "details": [
                                     'details',
                                     'details.artwork',
                                     'details.historic',
                                     'details.wiki_and_media'
                                   ],
                                   "datasource": {
                                     "sourcename": 'openstreetmap',
                                     "attribution": '© OpenStreetMap contributors',
                                     "license": 'Open Database Licence',
                                     "url": 'https://www.openstreetmap.org/copyright',
                                     "raw": {
                                       "name": 'Taru ja totuus',
                                       "osm_id": 298_277_933,
                                       "name:en": 'Fact and Fable',
                                       "name:sv": 'Saga och sanning',
                                       "website": 'https://www.hamhelsinki.fi/en/sculpture/taru-ja-totuus-topeliuksen-muistomerkki-gunnar-finne/',
                                       "historic": 'memorial',
                                       "memorial": 'sculpture',
                                       "osm_type": 'n',
                                       "wikidata": 'Q49104496',
                                       "wikipedia": 'fi:Taru ja totuus',
                                       "start_date": 1932,
                                       "artist_name": 'Gunnar Finne',
                                       "inscription": 'Memorial to Zacharias (Zachris) Topelius (1818-1898), author, poet, journalist, historian, and rector of the University of Helsinki. Artist Gunnar Finne,1932.',
                                       "artwork_type": 'sculpture'
                                     }
                                   },
                                   "place_id": '51f9cb3857def138405907dbada56f154e40f00103f9012d5cc7110000000092030e54617275206a6120746f74757573'
                                 },
                                 "geometry": {
                                   "type": 'Point',
                                   "coordinates": [
                                     24.9447989,
                                     60.16746970166246
                                   ]
                                 }
                               },
                               {
                                 "type": 'Feature',
                                 "properties": {
                                   "name": 'Inkeriläisten ja karjalaisten heimoveteraanien muistomerkki',
                                   "country": 'Finland',
                                   "country_code": 'fi',
                                   "state": 'Mainland Finland',
                                   "state_district": 'Southern Finland',
                                   "county": 'Uusimaa',
                                   "city": 'Helsinki',
                                   "municipality": 'Helsinki sub-region',
                                   "postcode": '00260',
                                   "district": 'Southern major district',
                                   "suburb": 'Töölö',
                                   "street": 'Sibeliuksenkatu',
                                   "lon": 24.9183192,
                                   "lat": 60.1813239,
                                   "formatted": 'Memorial for Ingrian and Karelian veterans, Sibeliuksenkatu, 00260 Helsinki, Finland',
                                   "address_line1": 'Memorial for Ingrian and Karelian veterans',
                                   "address_line2": 'Sibeliuksenkatu, 00260 Helsinki, Finland',
                                   "categories": [
                                     'tourism',
                                     'tourism.sights',
                                     'tourism.sights.memorial'
                                   ],
                                   "details": [
                                     'details',
                                     'details.historic',
                                     'details.wiki_and_media'
                                   ],
                                   "datasource": {
                                     "sourcename": 'openstreetmap',
                                     "attribution": '© OpenStreetMap contributors',
                                     "license": 'Open Database Licence',
                                     "url": 'https://www.openstreetmap.org/copyright',
                                     "raw": {
                                       "name": 'Inkeriläisten ja karjalaisten heimoveteraanien muistomerkki',
                                       "osm_id": 298_988_725,
                                       "name:en": 'Memorial for Ingrian and Karelian veterans',
                                       "name:fi": 'Inkeriläisten ja karjalaisten heimoveteraanien muistomerkki',
                                       "name:sv": 'Minnesmärke över de ingermanländska och karelska veteranerna',
                                       "website": 'https://www.hamhelsinki.fi/sculpture/inkerilaisten-ja-karjalaisten-heimoveteraanien-muistomerkki-yrjo-sormunen',
                                       "historic": 'memorial',
                                       "memorial": 'war_memorial',
                                       "osm_type": 'n',
                                       "wikidata": 'Q105621176',
                                       "start_date": 2007,
                                       "description": 'Sodassa 1944 kaatuneiden itäkarjalaisten ja inkeriläisten muistolle',
                                       "inscription": 'Memorial to Ingrian and East Karelian volunteers who fought alongside the Finnish army during the Continuation War. Designed by architect Yrjö Sormunen, 2007.'
                                     }
                                   },
                                   "place_id": '51f44993f716eb38405975d1219f35174e40f00103f901b534d2110000000092033c496e6b6572696cc3a4697374656e206a61206b61726a616c61697374656e206865696d6f766574657261616e69656e206d756973746f6d65726b6b69'
                                 },
                                 "geometry": {
                                   "type": 'Point',
                                   "coordinates": [
                                     24.9183192,
                                     60.181323901665486
                                   ]
                                 }
                               },
                               {
                                 "type": 'Feature',
                                 "properties": {
                                   "name": 'Itä ja Länsi / J. K. Paasikiven muistomerkki',
                                   "country": 'Finland',
                                   "country_code": 'fi',
                                   "state": 'Mainland Finland',
                                   "state_district": 'Southern Finland',
                                   "county": 'Uusimaa',
                                   "city": 'Helsinki',
                                   "municipality": 'Helsinki sub-region',
                                   "postcode": '00100',
                                   "district": 'Southern major district',
                                   "suburb": 'Kamppi',
                                   "street": 'Paasikivenaukio',
                                   "lon": 24.93585,
                                   "lat": 60.1708847,
                                   "formatted": 'East and West / Monument of J. K. Paasikivi, Paasikivenaukio, 00100 Helsinki, Finland',
                                   "address_line1": 'East and West / Monument of J. K. Paasikivi',
                                   "address_line2": 'Paasikivenaukio, 00100 Helsinki, Finland',
                                   "categories": [
                                     'tourism',
                                     'tourism.sights',
                                     'tourism.sights.memorial',
                                     'wheelchair',
                                     'wheelchair.yes'
                                   ],
                                   "details": [
                                     'details',
                                     'details.artwork',
                                     'details.facilities',
                                     'details.historic',
                                     'details.wiki_and_media'
                                   ],
                                   "datasource": {
                                     "sourcename": 'openstreetmap',
                                     "attribution": '© OpenStreetMap contributors',
                                     "license": 'Open Database Licence',
                                     "url": 'https://www.openstreetmap.org/copyright',
                                     "raw": {
                                       "name": 'Itä ja Länsi / J. K. Paasikiven muistomerkki',
                                       "osm_id": 302_566_824,
                                       "name:en": 'East and West / Monument of J. K. Paasikivi',
                                       "name:fi": 'Itä ja Länsi / J. K. Paasikiven muistomerkki',
                                       "name:sv": 'Öst och väst / J. K. Paasikivis minnesmärke',
                                       "website": 'https://www.hamhelsinki.fi/sculpture/ita-ja-lansi-j-k-paasikiven-muistomerkki-harry-kivijarvi',
                                       "historic": 'memorial',
                                       "memorial": 'sculpture',
                                       "osm_type": 'n',
                                       "wikidata": 'Q56402318',
                                       "start_date": 1980,
                                       "wheelchair": 'yes',
                                       "artist_name": 'Harry Kivijärvi',
                                       "inscription": 'Memorial to Juho Kusti Paasikivi (1870-1956), the seventh president of the Republic of Finland. Sculpture by Harry Kivijärvi, 1980.'
                                     }
                                   },
                                   "place_id": '512bf697dd93ef384059db83c68cdf154e40f00103f901a8cd08120000000092032e4974c3a4206a61204cc3a46e7369202f204a2e204b2e2050616173696b6976656e206d756973746f6d65726b6b69'
                                 },
                                 "geometry": {
                                   "type": 'Point',
                                   "coordinates": [
                                     24.93585,
                                     60.17088470166319
                                   ]
                                 }
                               }
                             ]
                           })
    end
  end
end
