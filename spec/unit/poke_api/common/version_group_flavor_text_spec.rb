RSpec.describe PokeApi::Common::VersionGroupFlavorText do
  describe '#initialize' do
    it 'creates a basic VersionGroupFlavorText object from raw json data' do
      raw_data = {
        text: 'The best Pokeball.',
        version_group: {
          name: 'x-y',
          url: 'https://pokeapi.co/api/v2/version-group/15/'
        },
        language: {
          name: 'en',
          url: 'https://pokeapi.co/api/v2/language/9/'
        }
      }
      vgft = PokeApi::Common::VersionGroupFlavorText.new(raw_data)

      expect(vgft.class).to eq(PokeApi::Common::VersionGroupFlavorText)
      expect(vgft.text).to eq('The best Pokeball.')
      expect(vgft.version_group.class).to eq(PokeApi::VersionGroup)
      expect(vgft.language.class).to eq(PokeApi::Utility::Language)
    end
  end
end
