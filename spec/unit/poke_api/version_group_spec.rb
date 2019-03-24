include ApiHelperMethods

RSpec.describe PokeApi::VersionGroup, :vcr do
  describe '#initialize' do
    it 'creates a VersionGroup object from raw json data' do
      raw_data = make_http_request(:version_group, 1)
      version_group = PokeApi::VersionGroup.new(raw_data)

      expect(version_group.class).to eq(PokeApi::VersionGroup)
      expect(version_group.id).to eq(1)
      expect(version_group.name).to eq('red-blue')
      expect(version_group.order).to eq(1)
      expect(version_group.versions.first.class).to eq(PokeApi::Version)
    end
  end
end
