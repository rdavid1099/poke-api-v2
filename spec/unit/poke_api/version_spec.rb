RSpec.describe PokeApi::Version, :vcr do
  describe '#initialize' do
    it 'creates a Version object from raw json data' do
      raw_data = Fetcher.call(:version, 1)
      version = PokeApi::Version.new(raw_data)

      expect(version.class).to eq(PokeApi::Version)
      expect(version.id).to eq(1)
      expect(version.name).to eq('red')
      expect(version.names.length).to eq(5)
      expect(version.names.first.class).to eq(PokeApi::Common::Name)
    end
  end
end
