RSpec.describe PokeApi::BerryFirmness, :vcr do
  describe '#initialize' do
    it 'creates a BerryFirmness object from raw json data' do
      raw_data = Fetcher.call(:berry_firmness, 1)
      bf = PokeApi::BerryFirmness.new(raw_data)

      expect(bf.class).to eq(PokeApi::BerryFirmness)
      expect(bf.id).to eq(1)
      expect(bf.name).to eq('very-soft')
      expect(bf.names.first.class).to eq(PokeApi::Common::Name)
      expect(bf.berries.first.class).to eq(PokeApi::Berry)
    end
  end
end
