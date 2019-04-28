RSpec.describe PokeApi::ContestType, :vcr do
  describe '#initialize' do
    it 'creates a ContestType object from raw json data' do
      raw_data = Fetcher.call(:contest_type, 1)
      contest_type = PokeApi::ContestType.new(raw_data)

      expect(contest_type.class).to eq(PokeApi::ContestType)
      expect(contest_type.id).to eq(1)
      expect(contest_type.name).to eq('cool')
      expect(contest_type.names.first.class).to eq(PokeApi::Common::Name)
      expect(contest_type.berry_flavor.class).to eq(PokeApi::BerryFlavor)
    end
  end
end
