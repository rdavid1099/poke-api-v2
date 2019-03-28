RSpec.describe PokeApi::Pokedex::PokemonEntry do
  describe '#initialize' do
    it 'creates a basic Description object from raw json data' do
      raw_data = {
        entry_number: 1,
        pokemon_species: {
          name: "bulbasaur",
          url: "https://pokeapi.co/api/v2/pokemon-species/1/"
        }
      }
      description = PokeApi::Pokedex::PokemonEntry.new(raw_data)

      expect(description.class).to eq(PokeApi::Pokedex::PokemonEntry)
      expect(description.entry_number).to eq(1)
      # expect(description.pokemon_species.class).to eq(PokeApi::PokemonSpecies)
    end
  end
end
