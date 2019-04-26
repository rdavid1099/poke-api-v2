RSpec.describe PokeApi::Move::MoveFlavorText do
  describe '#initialize' do
    it 'creates a basic MoveFlavorText object from raw json data' do
      raw_data = {
        flavor_text: "Pounds with fore­\nlegs or tail.",
        language: {
          url: "https://pokeapi.co/api/v2/language/9/",
          name: "en"
        },
        version_group: {
          url: "https://pokeapi.co/api/v2/version-group/3/",
          name: "gold-silver"
        }
      }
      mft = PokeApi::Move::MoveFlavorText.new(raw_data)

      expect(mft.class).to eq(PokeApi::Move::MoveFlavorText)
      expect(mft.flavor_text).to eq("Pounds with fore­\nlegs or tail.")
      expect(mft.language.class).to eq(PokeApi::Utility::Language)
      expect(mft.version_group.class).to eq(PokeApi::VersionGroup)
    end
  end
end
