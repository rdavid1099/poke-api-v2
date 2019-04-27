RSpec.describe PokeApi::PokeathlonStat::NaturePokeathlonStatAffect do
  describe '#initialize' do
    it 'creates a basic NaturePokeathlonStatAffect object from raw json data' do
      raw_data = {
        max_change: 2,
        nature: {
          name: "timid",
          url: "https://pokeapi.co/api/v2/nature/5/"
        }
      }
      npsa = PokeApi::PokeathlonStat::NaturePokeathlonStatAffect.new(raw_data)

      expect(npsa.class).to eq(PokeApi::PokeathlonStat::NaturePokeathlonStatAffect)
      expect(npsa.max_change).to eq(2)
      expect(npsa.nature.class).to eq(PokeApi::Nature)
    end
  end
end
