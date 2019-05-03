RSpec.describe PokeApi::Move::MoveMetaData do
  describe '#initialize' do
    it 'creates a basic MoveMetaData object from raw json data' do
      raw_data = {
        ailment: {
          name: "none",
          url: "https://pokeapi.co/api/v2/move-ailment/0/"
        },
        category: {
          name: "damage",
          url: "https://pokeapi.co/api/v2/move-category/0/"
        },
        min_hits: nil,
        max_hits: nil,
        min_turns: nil,
        max_turns: nil,
        drain: 0,
        healing: 0,
        crit_rate: 0,
        ailment_chance: 0,
        flinch_chance: 0,
        stat_chance: 0
      }

      mmd = PokeApi::Move::MoveMetaData.new(raw_data)

      expect(mmd.class).to eq(PokeApi::Move::MoveMetaData)
      expect(mmd.ailment.class).to eq(PokeApi::MoveAilment)
      expect(mmd.category.class).to eq(PokeApi::MoveCategory)
      expect(mmd.min_hits).to eq(nil)
      expect(mmd.max_hits).to eq(nil)
      expect(mmd.min_turns).to eq(nil)
      expect(mmd.max_turns).to eq(nil)
      expect(mmd.drain).to eq(0)
      expect(mmd.healing).to eq(0)
      expect(mmd.crit_rate).to eq(0)
      expect(mmd.ailment_chance).to eq(0)
      expect(mmd.flinch_chance).to eq(0)
      expect(mmd.stat_chance).to eq(0)
    end
  end
end
