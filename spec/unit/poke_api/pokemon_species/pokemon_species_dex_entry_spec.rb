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
      psde = PokeApi::PokemonSpecies::PokemonSpeciesDexEntry.new(raw_data)

      expect(psde.class).to eq(PokeApi::PokemonSpecies::PokemonSpeciesDexEntry)
      expect(psde.entry_number).to eq(45)
      expect(psde.pokedex.class).to eq(PokeApi::Pokedex)
    end
  end
end
