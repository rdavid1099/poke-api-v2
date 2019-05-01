RSpec.describe PokeApi::PokemonSpecies::PokemonSpeciesDexEntry do
  describe '#initialize' do
    it 'creates a basic PokemonSpeciesDexEntry object from raw json data' do
      raw_data = {
        entry_number: 45,
        pokedex: {
          name: "kalos-central",
          url: "https://pokeapi.co/api/v2/pokedex/12/"
        }
      }
      pokemon_entry = PokeApi::PokemonSpecies::PokemonSpeciesDexEntry.new(raw_data)

      expect(pokemon_entry.class).to eq(PokeApi::PokemonSpecies::PokemonSpeciesDexEntry)
      expect(pokemon_entry.entry_number).to eq(45)
      expect(pokemon_entry.pokedex.class).to eq(PokeApi::Pokedex)
    end
  end
end
