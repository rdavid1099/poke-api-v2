RSpec.describe PokeApi::Berry::BerryFlavorMap do
  describe '#initialize' do
    it 'creates a basic BerryFlavorMap object from raw json data' do
      raw_data = {
        potency: 10,
        flavor: {
          name: 'spicy',
          url: 'https://pokeapi.co/api/v2/berry-flavor/1/'
        }
      }
      bfm = PokeApi::Berry::BerryFlavorMap.new(raw_data)

      expect(bfm.class).to eq(PokeApi::Berry::BerryFlavorMap)
      expect(bfm.potency).to eq(10)
      expect(bfm.flavor.class).to eq(PokeApi::BerryFlavor)
    end
  end
end
