RSpec.describe PokeApi::ContestEffect, :vcr do
  describe '#initialize' do
    it 'creates a ContestEffect object from raw json data' do
      raw_data = Fetcher.call(:contest_effect, 1)
      contest_effect = PokeApi::ContestEffect.new(raw_data)

      expect(contest_effect.class).to eq(PokeApi::ContestEffect)
      expect(contest_effect.id).to eq(1)
      expect(contest_effect.appeal).to eq(4)
      expect(contest_effect.jam).to eq(0)
      expect(contest_effect.effect_entries.first.class).to eq(PokeApi::Common::Effect)
      expect(contest_effect.flavor_text_entries.first.class).to eq(PokeApi::Common::FlavorText)
    end
  end
end
