RSpec.describe PokeApi::Pokemon::PokemonStat do
  describe '#initialize' do
    it 'creates a basic PokemonStat object from raw json data' do
      raw_data = {
        base_stat: 70,
        effort: 0,
        stat: {
          name: "speed",
          url: "https://pokeapi.co/api/v2/stat/6/"
        }
      }
      poke_stat = PokeApi::Pokemon::PokemonStat.new(raw_data)

      expect(poke_stat.class).to eq(PokeApi::Pokemon::PokemonStat)
      expect(poke_stat.base_stat).to eq(70)
      expect(poke_stat.effort).to eq(0)
      expect(poke_stat.stat.class).to eq(PokeApi::Stat)
    end
  end
end
