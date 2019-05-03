RSpec.describe PokeApi::Pokemon::PokemonMove do
  describe '#initialize' do
    it 'creates a basic PokemonMove object from raw json data' do
      raw_data = {
        move: {
          name: "flash",
          url: "https://pokeapi.co/api/v2/move/148/"
        },
        version_group_details: [
          {
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
        ]
      }
      move_version = PokeApi::Pokemon::PokemonMove.new(raw_data)

      expect(move_version.class).to eq(PokeApi::Pokemon::PokemonMove)
      expect(move_version.move.class).to eq(PokeApi::Move)
      expect(move_version.version_group_details.first.class).to eq(PokeApi::Pokemon::PokemonMoveVersion)
    end
  end
end
