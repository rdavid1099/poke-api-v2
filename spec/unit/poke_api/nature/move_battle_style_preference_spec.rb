RSpec.describe PokeApi::Nature::MoveBattleStylePreference do
  describe '#initialize' do
    it 'creates a basic MoveBattleStylePreference object from raw json data' do
      raw_data = {
        low_hp_preference: 32,
        high_hp_preference: 30,
        move_battle_style: {
          name: "attack",
          url: "https://pokeapi.co/api/v2/move-battle-style/1/"
        }
      }
      mbsp = PokeApi::Nature::MoveBattleStylePreference.new(raw_data)

      expect(mbsp.class).to eq(PokeApi::Nature::MoveBattleStylePreference)
      expect(mbsp.low_hp_preference).to eq(32)
      expect(mbsp.high_hp_preference).to eq(30)
      expect(mbsp.move_battle_style.class).to eq(PokeApi::MoveBattleStyle)
    end
  end
end
