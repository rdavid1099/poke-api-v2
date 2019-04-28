RSpec.describe PokeApi::Move, :vcr do
  describe '#initialize' do
    it 'creates a Move object from raw json data' do
      raw_data = Fetcher.call(:move, 1)
      move = PokeApi::Move.new(raw_data)

      expect(move.class).to eq(PokeApi::Move)
      expect(move.id).to eq(1)
      expect(move.name).to eq('pound')
      expect(move.names.first.class).to eq(PokeApi::Common::Name)
      expect(move.accuracy).to eq(100)
      expect(move.effect_chance).to eq(nil)
      expect(move.pp).to eq(35)
      expect(move.priority).to eq(0)
      expect(move.power).to eq(40)
      expect(move.contest_combos.class).to eq(PokeApi::Move::ContestComboSets)
      # expect(move.contest_type).to eq(PokeApi::ContestType)
      # expect(move.contest_effect).to eq(PokeApi::ContestEffect)
      # expect(move.damage_class).to eq(PokeApi::MoveDamageClass)
      expect(move.effect_entries.first.class).to eq(PokeApi::Common::VerboseEffect)
      expect(move.effect_changes.first).to eq(nil)
      expect(move.flavor_text_entries.first.class).to eq(PokeApi::Move::MoveFlavorText)
      # expect(move.generation).to eq(PokeApi::Generation)
      expect(move.machines).to eq([])
      expect(move.meta.class).to eq(PokeApi::Move::MoveMetaData)
      expect(move.past_values).to eq([])
      expect(move.stat_changes).to eq([])
      expect(move.super_contest_effect.class).to eq(PokeApi::SuperContestEffect)
      expect(move.target.class).to eq(PokeApi::MoveTarget)
      expect(move.type.class).to eq(PokeApi::Type)
    end
  end
end
