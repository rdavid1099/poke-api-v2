RSpec.describe PokeApi::MoveCategory, :vcr do
  describe '#initialize' do
    it 'creates a MoveCategory object from raw json data' do
      raw_data = Fetcher.call(:move_category, 1)
      move_category = PokeApi::MoveCategory.new(raw_data)

      expect(move_category.class).to eq(PokeApi::MoveCategory)
      expect(move_category.id).to eq(1)
      expect(move_category.name).to eq('ailment')
      expect(move_category.descriptions.first.class).to eq(PokeApi::Common::Description)
      expect(move_category.moves.first.class).to eq(PokeApi::Move)
    end
  end
end
