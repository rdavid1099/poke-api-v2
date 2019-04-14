RSpec.describe PokeApi::ItemAttribute, :vcr do
  describe '#initialize' do
    it 'creates an ItemAttribute object from raw json data' do
      raw_data = Fetcher.call(:item_attribute, 1)
      attr = PokeApi::ItemAttribute.new(raw_data)

      expect(attr.id).to eq(1)
      expect(attr.name).to eq('countable')
      expect(attr.items.first.class).to eq(PokeApi::Item)
      expect(attr.names.first.class).to eq(PokeApi::Common::Name)
      expect(attr.descriptions.first.class).to eq(PokeApi::Common::Description)
    end
  end
end
