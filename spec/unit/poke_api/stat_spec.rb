RSpec.describe PokeApi::Stat, :vcr do
  describe '#initialize' do
    it 'creates a Stat object from raw json data' do
      raw_data = Fetcher.call(:stat, 2)
      stat = PokeApi::Stat.new(raw_data)

      expect(stat.class).to eq(PokeApi::Stat)
      expect(stat.id).to eq(2)
      expect(stat.name).to eq('attack')
      expect(stat.names.first.class).to eq(PokeApi::Common::Name)
      expect(stat.game_index).to eq(2)
      expect(stat.is_battle_only).to eq(false)
      expect(stat.affecting_moves.class).to eq(PokeApi::Stat::MoveStatAffectSets)
      expect(stat.affecting_natures.class).to eq(PokeApi::Stat::NatureStatAffectSets)
      # expect(stat.characteristics.class).to eq(PokeApi::Characteristics)
      # expect(stat.move_damage_class.class).to eq(PokeApi::MoveDamageClass)
    end
  end
end
