RSpec.describe PokeApi::Gender::PokemonSpeciesGender do
  describe '#initialize' do
    it 'creates a basic PokemonSpeciesGender object from raw json data' do
      raw_data = {
        rate: 1,
        pokemon_species: {
          name: "bulbasaur",
          url: "https://pokeapi.co/api/v2/pokemon-species/1/"
        }
      }
      psg = PokeApi::Gender::PokemonSpeciesGender.new(raw_data)

      expect(psg.class).to eq(PokeApi::Gender::PokemonSpeciesGender)
      expect(psg.rate).to eq(1)
      expect(psg.pokemon_species.class).to eq(PokeApi::PokemonSpecies)
    end
  end
end
