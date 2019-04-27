RSpec.describe PokeApi::Stat::MoveStatAffectSets do
  describe '#initialize' do
    it 'creates a basic MoveStatAffectSets object from raw json data' do
      raw_data = {
        increase: [
          {
            change: 2,
            move: {
              name: "swords-dance",
              url: "https://pokeapi.co/api/v2/move/14/"
            }
          }
        ],
        decrease: [
          {
            change: -1,
            move: {
              name: "growl",
              url: "https://pokeapi.co/api/v2/move/45/"
            }
          }
        ]
      }

      msas = PokeApi::Stat::MoveStatAffectSets.new(raw_data)

      expect(msas.class).to eq(PokeApi::Stat::MoveStatAffectSets)
      expect(msas.increase.first.class).to eq(PokeApi::Stat::MoveStatAffect)
      expect(msas.decrease.first.class).to eq(PokeApi::Stat::MoveStatAffect)
    end
  end
end
