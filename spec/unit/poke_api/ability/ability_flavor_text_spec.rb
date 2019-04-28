RSpec.describe PokeApi::Ability::AbilityFlavorText do
  describe '#initialize' do
    it 'creates a basic AbilityFlavorText object from raw json data' do
      raw_data = {
        flavor_text: "flavor text test",
        language: {
          name: "ja-kanji",
          url: "https://pokeapi.co/api/v2/language/11/"
        },
        version_group: {
          name: "x-y",
          url: "https://pokeapi.co/api/v2/version-group/15/"
        }
      }
      aft = PokeApi::Ability::AbilityFlavorText.new(raw_data)

      expect(aft.class).to eq(PokeApi::Ability::AbilityFlavorText)
      expect(aft.flavor_text).to eq("flavor text test")
      expect(aft.language.class).to eq(PokeApi::Utility::Language)
      expect(aft.version_group.class).to eq(PokeApi::VersionGroup)
    end
  end
end
