RSpec.describe PokeApi::BerryFlavor::FlavorBerryMap do
  describe '#initialize' do
    it 'creates a basic FlavorBerryMap object from raw json data' do
      raw_data = {
        potency: 10,
        berry: {
          name: "rowap",
          url: "https://pokeapi.co/api/v2/berry/64/"
        }
      }
      fbm = PokeApi::BerryFlavor::FlavorBerryMap.new(raw_data)

      expect(fbm.class).to eq(PokeApi::BerryFlavor::FlavorBerryMap)
      expect(fbm.potency).to eq(10)
      expect(fbm.berry.class).to eq(PokeApi::Berry)
    end
  end
end
