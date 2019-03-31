RSpec.describe PokeApi::Common::Encounter do
  describe '#initialize' do
    it 'creates a basic Encounter object from raw json data' do
      raw_data = {
        min_level: 20,
        max_level: 30,
        condition_values: [{
          id: 1,
          name: 'swarm-yes',
          condition: {
            name: 'swarm',
            url: 'https://pokeapi.co/api/v2/encounter-condition/1/'
          },
          names: [{
            name: 'WÃ¤hrend eines Schwarms',
            language: {
              name: 'de',
              url:'https://pokeapi.co/api/v2/language/6/'
            }
          }]
        }],
        chance: 60,
        method: {
          name: 'surf',
          url: 'https://pokeapi.co/api/v2/encounter-method/5/'
        }
      }
      encounter = PokeApi::Common::Encounter.new(raw_data)

      expect(encounter.class).to eq(PokeApi::Common::Encounter)
      expect(encounter.chance).to eq(60)
      expect(encounter.min_level).to eq(20)
      expect(encounter.max_level).to eq(30)
      # expect(encounter.condition_values.first).to eq(PokeApi::EncounterConditionValue)
      # expect(encounter.method.class).to eq( PokeApi::EncounterMethod)
    end
  end
end
