RSpec.describe PokeApi::Item::ItemHolderPokemonVersionDetail do
  describe '#initialize' do
    it 'creates a basic ItemHolderPokemonVersionDetail object from raw json data' do
      raw_data = {
        rarity: 50,
        version: {
          name: 'soulsilver',
          url: 'https://pokeapi.co/api/v2/version/16/'
        }
      }
      ihpvd = PokeApi::Item::ItemHolderPokemonVersionDetail.new(raw_data)

      expect(ihpvd.class).to eq(PokeApi::Item::ItemHolderPokemonVersionDetail)
      expect(ihpvd.rarity).to eq(50)
      expect(ihpvd.version.class).to eq(PokeApi::Version)
    end
  end
end
