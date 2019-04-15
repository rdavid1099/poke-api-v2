RSpec.describe PokeApi::Type::TypePokemon do
  describe '#initialize' do
    it 'creates a basic TypePokemon object from raw json data' do
      raw_data = {
        slot: 1,
        pokemon: {
          name: 'sandshrew',
          url: 'https://pokeapi.co/api/v2/pokemon/27/'
        }
      }
      tp = PokeApi::Type::TypePokemon.new(raw_data)

      expect(tp.class).to eq(PokeApi::Type::TypePokemon)
      expect(tp.slot).to eq(1)
      expect(tp.pokemon.class).to eq(PokeApi::Pokemon)
    end
  end
end
