RSpec.describe PokeApi::Ability::AbilityEffectChange do
  describe '#initialize' do
    it 'creates a basic AbilityEffectChange object from raw json data' do
      raw_data = {
        version_group: {
          name: "black-white",
          url: "https://pokeapi.co/api/v2/version-group/11/"
        },
        effect_entries: [
          {
            effect: "Has no effect in battle.",
            language: {
              name: "en",
              url: "https://pokeapi.co/api/v2/language/9/"
            }
          }
        ]
      }
      aec = PokeApi::Ability::AbilityEffectChange.new(raw_data)

      expect(aec.class).to eq(PokeApi::Ability::AbilityEffectChange)
      expect(aec.effect_entries.first.class).to eq(PokeApi::Common::Effect)
      expect(aec.version_group.class).to eq(PokeApi::VersionGroup)
    end
  end
end
