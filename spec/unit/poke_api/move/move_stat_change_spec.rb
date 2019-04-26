RSpec.describe PokeApi::Move::MoveStatChange do
  describe '#initialize' do
    it 'creates a basic MoveStatChange object from raw json data' do
      raw_data = {
        change: 50,
        stat: {
          name: "attack",
          url: "https://pokeapi.co/api/v2/stat/2/"
        }
      }
      msc = PokeApi::Move::MoveStatChange.new(raw_data)

      expect(msc.class).to eq(PokeApi::Move::MoveStatChange)
      expect(msc.change).to eq(50)
      # expect(msc.stat.class).to eq(PokeApi::Stat)
    end
  end
end
