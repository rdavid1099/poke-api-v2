RSpec.describe PokeApi::PokemonColor, :vcr do
  describe '#initialize' do
    it 'creates a PokemonColor object from raw json data' do
      raw_data = Fetcher.call(:pokemon_color, 1)
      pokemon_color = PokeApi::PokemonColor.new(raw_data)

      expect(pokemon_color.class).to eq(PokeApi::PokemonColor)
      expect(pokemon_color.id).to eq(1)
      expect(pokemon_color.name).to eq('black')
      expect(pokemon_color.names.first.class).to eq(PokeApi::Common::Name)
      expect(pokemon_color.pokemon_species.first.class).to eq(PokeApi::PokemonSpecies)
    end
  end
end
