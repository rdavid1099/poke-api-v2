RSpec.describe PokeApi::BerryFlavor, :vcr do
  describe '#initialize' do
    it 'creates a BerryFlavor object from raw json data' do
      raw_data = Fetcher.call(:berry_flavor, 1)
      berry_flavor = PokeApi::BerryFlavor.new(raw_data)

      expect(berry_flavor.class).to eq(PokeApi::BerryFlavor)
      expect(berry_flavor.id).to eq(1)
      expect(berry_flavor.name).to eq('spicy')
      expect(berry_flavor.names.first.class).to eq(PokeApi::Common::Name)
      expect(berry_flavor.berries.first.class).to eq(PokeApi::BerryFlavor::FlavorBerryMap)
      expect(berry_flavor.contest_type.class).to eq(PokeApi::ContestType)
    end
  end
end
