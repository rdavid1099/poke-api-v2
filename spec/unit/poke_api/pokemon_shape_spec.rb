RSpec.describe PokeApi::PokemonShape, :vcr do
  describe '#initialize' do
    it 'creates a PokemonShape object from raw json data' do
      raw_data = Fetcher.call(:pokemon_shape, 1)
      pokemon_shape = PokeApi::PokemonShape.new(raw_data)

      expect(pokemon_shape.class).to eq(PokeApi::PokemonShape)
      expect(pokemon_shape.id).to eq(1)
      expect(pokemon_shape.name).to eq('ball')
      expect(pokemon_shape.names.first.class).to eq(PokeApi::Common::Name)
      expect(pokemon_shape.awesome_names.first.class).to eq(PokeApi::PokemonShape::AwesomeName)
      expect(pokemon_shape.pokemon_species.first.class).to eq(PokeApi::PokemonSpecies)
    end
  end
end
