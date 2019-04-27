RSpec.describe PokeApi::Nature, :vcr do
  describe '#initialize' do
    it 'creates a Nature object from raw json data' do
      raw_data = Fetcher.call(:nature, 2)
      nature = PokeApi::Nature.new(raw_data)

      expect(nature.class).to eq(PokeApi::Nature)
      expect(nature.id).to eq(2)
      expect(nature.name).to eq('bold')
      expect(nature.names.first.class).to eq(PokeApi::Common::Name)
      expect(nature.decreased_stat.class).to eq(PokeApi::Stat)
      expect(nature.increased_stat.class).to eq(PokeApi::Stat)
      # expect(nature.likes_flavor.class).to eq(PokeApi::BerryFlavor)
      # expect(nature.hates_flavor.class).to eq(PokeApi::BerryFlavor)
      expect(nature.pokeathlon_stat_changes.first.class).to eq(PokeApi::Nature::NatureStatChange)
      expect(nature.move_battle_style_preferences.first.class).to eq(PokeApi::Nature::MoveBattleStylePreference)
    end
  end
end
