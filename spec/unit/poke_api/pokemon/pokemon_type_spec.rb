RSpec.describe PokeApi::Pokemon::PokemonType do
  describe '#initialize' do
    it 'creates a basic PokemonType object from raw json data' do
      raw_data = {
        slot: 2,
        type: {
          name: "flying",
          url: "https://pokeapi.co/api/v2/type/3/"
        }
      }
      poke_type = PokeApi::Pokemon::PokemonType.new(raw_data)

      expect(poke_type.class).to eq(PokeApi::Pokemon::PokemonType)
      expect(poke_type.slot).to eq(2)
      expect(poke_type.type.class).to eq(PokeApi::Type)
    end
  end
end
