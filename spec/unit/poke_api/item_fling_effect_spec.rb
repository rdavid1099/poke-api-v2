RSpec.describe PokeApi::ItemFlingEffect, :vcr do
  describe '#initialize' do
    it 'creates an ItemFlingEffect object from raw json data' do
      raw_data = Fetcher.call(:item_fling_effect, 'badly-poison')
      ife = PokeApi::ItemFlingEffect.new(raw_data)

      expect(ife.id).to eq(1)
      expect(ife.name).to eq('badly-poison')
      expect(ife.effect_entries.first.class).to eq(PokeApi::Common::Effect)
      expect(ife.items.first.class).to eq(PokeApi::Item)
    end
  end
end
