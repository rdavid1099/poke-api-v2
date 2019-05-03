RSpec.describe PokeApi::Common::VersionGameIndex do
  describe '#initialize' do
    it 'creates a basic VersionGameIndex object from raw json data' do
      raw_data = {
        game_index: 12,
        version: {
          name: "white-2",
          url: "https://pokeapi.co/api/v2/version/22/"
        }
      }
      vgi = PokeApi::Common::VersionGameIndex.new(raw_data)

      expect(vgi.class).to eq(PokeApi::Common::VersionGameIndex)
      expect(vgi.version.class).to eq(PokeApi::Version)
      expect(vgi.game_index).to eq(12)
    end
  end
end
