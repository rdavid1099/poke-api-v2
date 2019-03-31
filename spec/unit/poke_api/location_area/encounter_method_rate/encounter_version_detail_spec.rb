RSpec.describe PokeApi::LocationArea::EncounterMethodRate::EncounterVersionDetail do
  describe '#initialize' do
    it 'creates a basic EncounterVersionDetail object from raw json data' do
      raw_data = {
        rate: 25,
        version: {
          name: 'platinum',
          url: 'https://pokeapi.co/api/v2/version/14/'
        }
      }
      evd = PokeApi::LocationArea::EncounterMethodRate::EncounterVersionDetail.new(raw_data)

      expect(evd.class).to eq(PokeApi::LocationArea::EncounterMethodRate::EncounterVersionDetail)
      expect(evd.rate).to eq(25)
      expect(evd.version.class).to eq(PokeApi::Version)
      expect(evd.version.name).to eq('platinum')
    end
  end
end
