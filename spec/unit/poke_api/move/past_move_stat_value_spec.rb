RSpec.describe PokeApi::Move::PastMoveStatValue do
  describe '#initialize' do
    it 'creates a basic PastMoveStatValue object from raw json data' do
      raw_data = {
        accuracy: 50,
        effect_chance: 50,
        power: 50,
        pp: 50,
        effect_entries: [
          {
            effect: "Used in battle",
            short_effect: "Catches a wild Pokémon every time.",
            language: {
              name: "en",
              url: "https://pokeapi.co/api/v2/language/9/"
            }
          }
        ],
        type: {
          name: "normal",
          url: "https://pokeapi.co/api/v2/type/1/"
        },
        version_group: {
          url: "https://pokeapi.co/api/v2/version-group/3/",
          name: "gold-silver"
        }
      }

      pmsv = PokeApi::Move::PastMoveStatValue.new(raw_data)

      expect(pmsv.class).to eq(PokeApi::Move::PastMoveStatValue)
      expect(pmsv.accuracy).to eq(50)
      expect(pmsv.effect_chance).to eq(50)
      expect(pmsv.power).to eq(50)
      expect(pmsv.pp).to eq(50)
      expect(pmsv.effect_entries.first.class).to eq(PokeApi::Common::VerboseEffect)
      expect(pmsv.type.class).to eq(PokeApi::Type)
      expect(pmsv.version_group.class).to eq(PokeApi::VersionGroup)
    end
  end
end
