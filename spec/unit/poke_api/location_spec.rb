RSpec.describe PokeApi::Location, :vcr do
  describe '#initialize' do
    it 'creates a Location object from raw json data' do
      raw_data = Fetcher.call(:location, 1)
      location = PokeApi::Location.new(raw_data)

      expect(location.class).to eq(PokeApi::Location)
      expect(location.id).to eq(1)
      expect(location.areas.first.class).to eq(PokeApi::LocationArea)
      expect(location.name).to eq('canalave-city')
      expect(location.names.first.class).to eq(PokeApi::Common::Name)
      expect(location.region.name).to eq('sinnoh')
      expect(location.game_indices.first.class).to eq(PokeApi::Common::GameIndex)
    end
  end
end
