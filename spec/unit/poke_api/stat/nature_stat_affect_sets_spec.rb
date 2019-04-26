RSpec.describe PokeApi::Stat::NatureStatAffectSets do
  describe '#initialize' do
    it 'creates a basic NatureStatAffectSets object from raw json data' do
      raw_data = {
        increase: [
          {
            name: "lonely",
            url: "https://pokeapi.co/api/v2/nature/6/"
          }
        ],
        decrease: [
          {
            name: "bold",
            url: "https://pokeapi.co/api/v2/nature/2/"
          }
        ]
      }

      nsas = PokeApi::Stat::NatureStatAffectSets.new(raw_data)

      expect(nsas.class).to eq(PokeApi::Stat::NatureStatAffectSets)
      expect(nsas.increase.first.class).to eq(PokeApi::Nature)
      expect(nsas.decrease.first.class).to eq(PokeApi::Nature)
    end
  end
end
