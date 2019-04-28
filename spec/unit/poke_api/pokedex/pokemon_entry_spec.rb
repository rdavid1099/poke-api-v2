RSpec.describe PokeApi::Pokedex::PokemonEntry do
  describe '#initialize' do
    it 'creates a basic PokemonEntry object from raw json data' do
      raw_data = {
        entry_number: 1,
        pokemon_species: {
          name: 'bulbasaur',
          url: 'https://pokeapi.co/api/v2/pokemon-species/1/'
        }
      }
      pokemon_entry = PokeApi::Pokedex::PokemonEntry.new(raw_data)

      expect(pokemon_entry.class).to eq(PokeApi::Pokedex::PokemonEntry)
      expect(pokemon_entry.entry_number).to eq(1)
      expect(pokemon_entry.pokemon_species.class).to eq(PokeApi::PokemonSpecies)
    end
  end
end
