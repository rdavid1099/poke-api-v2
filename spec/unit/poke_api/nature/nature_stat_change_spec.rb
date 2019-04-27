RSpec.describe PokeApi::Nature::NatureStatChange do
  describe '#initialize' do
    it 'creates a basic NatureStatChange object from raw json data' do
      raw_data = {
        max_change: -2,
        pokeathlon_stat: {
          name: "speed",
          url: "https://pokeapi.co/api/v2/pokeathlon-stat/1/"
        }
      }
      nsc = PokeApi::Nature::NatureStatChange.new(raw_data)

      expect(nsc.class).to eq(PokeApi::Nature::NatureStatChange)
      expect(nsc.max_change).to eq(-2)
      expect(nsc.pokeathlon_stat.class).to eq(PokeApi::PokeathlonStat)
    end
  end
end
