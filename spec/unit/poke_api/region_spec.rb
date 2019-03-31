include ApiHelperMethods

RSpec.describe PokeApi::Region, :vcr do
  describe '#initialize' do
    it 'creates a Region object from raw json data' do
      raw_data = make_http_request(:region, 1)
      region = PokeApi::Region.new(raw_data)

      expect(region.class).to eq(PokeApi::Region)
      expect(region.id).to eq(1)
      expect(region.locations.first.class).to eq(PokeApi::Location)
      expect(region.name).to eq('kanto')
      expect(region.names.first.class).to eq(PokeApi::Common::Name)
      # expect(region.main_generation.name).to eq('generation-i')
      expect(region.pokedexes.first.name).to eq('kanto')
      expect(region.version_groups.first.class).to eq(PokeApi::VersionGroup)
    end
  end
end
