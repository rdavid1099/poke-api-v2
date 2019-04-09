RSpec.describe PokeApi::LocationArea::EncounterMethodRate do
  describe '#initialize' do
    it 'creates a basic EncounterMethodRates object from raw json data' do
      raw_data = {
        encounter_method: {
          name: 'old-rod',
          url: 'https://pokeapi.co/api/v2/encounter-method/2/'
        },
        version_details: [
          {
            rate: 25,
            version: {
              name: 'platinum',
              url: 'https://pokeapi.co/api/v2/version/14/'
            }
          }
        ]
      }
      emr = PokeApi::LocationArea::EncounterMethodRate.new(raw_data)

      expect(emr.class).to eq(PokeApi::LocationArea::EncounterMethodRate)
      expect(emr.encounter_method.class).to eq(PokeApi::EncounterMethod)
      expect(emr.version_details.first.class).to eq(PokeApi::LocationArea::EncounterMethodRate::EncounterVersionDetail)
    end
  end
end
