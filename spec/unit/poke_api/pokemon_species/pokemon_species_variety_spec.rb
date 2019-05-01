RSpec.describe PokeApi::PokemonSpecies::PokemonSpeciesVariety do
  describe '#initialize' do
    it 'creates a basic PokemonSpeciesVariety object from raw json data' do
      raw_data = {
        is_default: true,
        pokemon: {
          name: "wormadam-plant",
          url: "https://pokeapi.co/api/v2/pokemon/413/"
        }
      }
      psv = PokeApi::PokemonSpecies::PokemonSpeciesVariety.new(raw_data)

      expect(psv.class).to eq(PokeApi::PokemonSpecies::PokemonSpeciesVariety)
      expect(psv.is_default).to eq(true)
      expect(psv.pokemon.class).to eq(PokeApi::Pokemon)
    end
  end
end
