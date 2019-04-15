RSpec.describe PokeApi::ItemPocket, :vcr do
  describe '#initialize' do
    it 'creates an ItemPocket object from raw json data' do
      raw_data = Fetcher.call(:item_pocket, 1)
      pocket = PokeApi::ItemPocket.new(raw_data)

      expect(pocket.id).to eq(1)
      expect(pocket.name).to eq('misc')
      expect(pocket.categories.first.class).to eq(PokeApi::ItemCategory)
      expect(pocket.names.first.class).to eq(PokeApi::Common::Name)
    end
  end
end
