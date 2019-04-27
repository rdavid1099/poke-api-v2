RSpec.describe PokeApi::MoveBattleStyle, :vcr do
  describe '#initialize' do
    it 'creates a MoveBattleStyle object from raw json data' do
      raw_data = Fetcher.call(:move_battle_style, 1)
      mbs = PokeApi::MoveBattleStyle.new(raw_data)

      expect(mbs.class).to eq(PokeApi::MoveBattleStyle)
      expect(mbs.id).to eq(1)
      expect(mbs.name).to eq('attack')
      expect(mbs.names.first.class).to eq(PokeApi::Common::Name)
    end
  end
end
