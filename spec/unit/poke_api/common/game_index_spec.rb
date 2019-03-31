RSpec.describe PokeApi::Common::GameIndex do
  describe '#initialize' do
    it 'creates a basic GameIndex object from raw json data' do
      raw_data = {
        game_index: 7,
        generation: {
          name:'generation-iv',
          url: 'https://pokeapi.co/api/v2/generation/4/'
        }
      }
      game_index = PokeApi::Common::GameIndex.new(raw_data)

      expect(game_index.class).to eq(PokeApi::Common::GameIndex)
      expect(game_index.game_index).to eq(7)
      # expect(game_index.generation.class).to eq(PokeApi::Generation)
    end
  end
end
