RSpec.describe PokeApi::Stat::MoveStatAffect do
  describe '#initialize' do
    it 'creates a basic MoveStatAffect object from raw json data' do
      raw_data = {
        change: 2,
        move: {
          name: "swords-dance",
          url: "https://pokeapi.co/api/v2/move/14/"
        }
      }

      msa = PokeApi::Stat::MoveStatAffect.new(raw_data)

      expect(msa.class).to eq(PokeApi::Stat::MoveStatAffect)
      expect(msa.change).to eq(2)
      expect(msa.move.class).to eq(PokeApi::Move)
    end
  end
end
