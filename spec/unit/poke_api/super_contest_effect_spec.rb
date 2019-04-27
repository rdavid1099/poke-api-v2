RSpec.describe PokeApi::SuperContestEffect, :vcr do
  describe '#initialize' do
    it 'creates a SuperContestEffect object from raw json data' do
      raw_data = Fetcher.call(:super_contest_effect, 1)
      super_contest_effect = PokeApi::SuperContestEffect.new(raw_data)

      expect(super_contest_effect.class).to eq(PokeApi::SuperContestEffect)
      expect(super_contest_effect.id).to eq(1)
      expect(super_contest_effect.appeal).to eq(2)
      expect(super_contest_effect.flavor_text_entries.first.class).to eq(PokeApi::Common::FlavorText)
      expect(super_contest_effect.moves.first.class).to eq(PokeApi::Move)
    end
  end
end
