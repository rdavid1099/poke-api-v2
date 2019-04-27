RSpec.describe PokeApi::PokeathlonStat, :vcr do
  describe '#initialize' do
    it 'creates a PokeathlonStat object from raw json data' do
      raw_data = Fetcher.call(:pokeathlon_stat, 1)
      pokeathlon_stat = PokeApi::PokeathlonStat.new(raw_data)

      expect(pokeathlon_stat.class).to eq(PokeApi::PokeathlonStat)
      expect(pokeathlon_stat.id).to eq(1)
      expect(pokeathlon_stat.name).to eq('speed')
      expect(pokeathlon_stat.names.first.class).to eq(PokeApi::Common::Name)
      expect(pokeathlon_stat.affecting_natures.class).to eq(PokeApi::PokeathlonStat::NaturePokeathlonStatAffectSets)
    end
  end
end
