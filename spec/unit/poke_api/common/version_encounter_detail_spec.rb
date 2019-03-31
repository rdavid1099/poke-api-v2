RSpec.describe PokeApi::Common::VersionEncounterDetail do
  describe '#initialize' do
    it 'creates a basic VersionEncounterDetail object from raw json data' do
      raw_data = {
        version: {
          name: 'diamond',
          url: 'https://pokeapi.co/api/v2/version/12/'
        },
        max_chance: 60,
        encounter_details: [{
          min_level: 20,
          max_level: 30,
          condition_values: [],
          chance: 60,
          method: {
            name: 'surf',
            url: 'https://pokeapi.co/api/v2/encounter-method/5/'
          }
        }]
      }
      ved = PokeApi::Common::VersionEncounterDetail.new(raw_data)

      expect(ved.class).to eq(PokeApi::Common::VersionEncounterDetail)
      expect(ved.version.class).to eq(PokeApi::Version)
      expect(ved.encounter_details.first.class).to eq(PokeApi::Common::Encounter)
    end
  end
end
