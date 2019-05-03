RSpec.describe PokeApi::Pokemon::PokemonHeldItemVersion do
  describe '#initialize' do
    it 'creates a basic PokemonHeldItemVersion object from raw json data' do
      raw_data = {
        rarity: 5,
        version: {
          name: "y",
          url: "https://pokeapi.co/api/v2/version/24/"
        }
      }
      version_detail = PokeApi::Pokemon::PokemonHeldItemVersion.new(raw_data)

      expect(version_detail.class).to eq(PokeApi::Pokemon::PokemonHeldItemVersion)
      expect(version_detail.rarity).to eq(5)
      expect(version_detail.version.class).to eq(PokeApi::Version)
    end
  end
end
