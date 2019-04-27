RSpec.describe PokeApi::PokeathlonStat::NaturePokeathlonStatAffectSets do
  describe '#initialize' do
    it 'creates a basic NaturePokeathlonStatAffectSets object from raw json data' do
      raw_data = {
        increase: [
          {
            max_change: 2,
            nature: {
              name: "timid",
              url: "https://pokeapi.co/api/v2/nature/5/"
            }
          }
        ],
        decrease: [
          {
            max_change: -1,
            nature: {
              name: "hardy",
              url: "https://pokeapi.co/api/v2/nature/1/"
            }
          }
        ]
      }
      npsas = PokeApi::PokeathlonStat::NaturePokeathlonStatAffectSets.new(raw_data)

      expect(npsas.class).to eq(PokeApi::PokeathlonStat::NaturePokeathlonStatAffectSets)
      expect(npsas.increase.first.class).to eq(PokeApi::PokeathlonStat::NaturePokeathlonStatAffect)
      expect(npsas.decrease.first.class).to eq(PokeApi::PokeathlonStat::NaturePokeathlonStatAffect)
    end
  end
end
