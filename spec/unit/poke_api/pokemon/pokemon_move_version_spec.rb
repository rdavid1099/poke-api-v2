RSpec.describe PokeApi::Pokemon::PokemonMoveVersion do
  describe '#initialize' do
    it 'creates a basic PokemonMoveVersion object from raw json data' do
      raw_data = {
        level_learned_at: 0,
        version_group: {
          name: "x-y",
          url: "https://pokeapi.co/api/v2/version-group/15/"
        },
        move_learn_method: {
          name: "machine",
          url: "https://pokeapi.co/api/v2/move-learn-method/4/"
        }
      }
      move_version = PokeApi::Pokemon::PokemonMoveVersion.new(raw_data)

      expect(move_version.class).to eq(PokeApi::Pokemon::PokemonMoveVersion)
      expect(move_version.level_learned_at).to eq(0)
      expect(move_version.version_group.class).to eq(PokeApi::VersionGroup)
      expect(move_version.move_learn_method.class).to eq(PokeApi::MoveLearnMethod)
    end
  end
end
