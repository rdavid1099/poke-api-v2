RSpec.describe PokeApi::ItemCategory, :vcr do
  describe '#initialize' do
    it 'creates an ItemCategory object from raw json data' do
      raw_data = Fetcher.call(:item_category, 1)
      category = PokeApi::ItemCategory.new(raw_data)

      expect(category.id).to eq(1)
      expect(category.name).to eq('stat-boosts')
      expect(category.items.first.class).to eq(PokeApi::Item)
      expect(category.names.first.class).to eq(PokeApi::Common::Name)
      # expect(category.pocket.class).to eq(PokeApi::ItemPocket)
    end
  end
end
