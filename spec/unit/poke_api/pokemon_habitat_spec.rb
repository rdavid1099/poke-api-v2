RSpec.describe PokeApi::PokemonHabitat, :vcr do
  describe '#initialize' do
    it 'creates a PokemonHabitat object from raw json data' do
      raw_data = Fetcher.call(:pokemon_habitat, 1)
      pokemon_habitat = PokeApi::PokemonHabitat.new(raw_data)

      expect(pokemon_habitat.class).to eq(PokeApi::PokemonHabitat)
      expect(pokemon_habitat.id).to eq(1)
      expect(pokemon_habitat.name).to eq('cave')
      expect(pokemon_habitat.names.first.class).to eq(PokeApi::Common::Name)
      expect(pokemon_habitat.pokemon_species.first.class).to eq(PokeApi::PokemonSpecies)
    end
  end
end
