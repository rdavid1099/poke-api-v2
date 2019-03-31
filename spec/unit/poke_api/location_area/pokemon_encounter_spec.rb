RSpec.describe PokeApi::LocationArea::PokemonEncounter do
  describe '#initialize' do
    it 'creates a basic PokemonEncounters object from raw json data' do
      raw_data = {
        pokemon: {
          name: 'tentacool',
          url: 'https://pokeapi.co/api/v2/pokemon/72/'
        },
        version_details: [{
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
        }]
      }
      pe = PokeApi::LocationArea::PokemonEncounter.new(raw_data)

      expect(pe.class).to eq(PokeApi::LocationArea::PokemonEncounter)
      expect(pe.pokemon.class).to eq(PokeApi::Pokemon)
      expect(pe.version_details.first.class).to eq(PokeApi::Common::VersionEncounterDetail)
    end
  end
end
