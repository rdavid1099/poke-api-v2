RSpec.describe PokeApi::MoveAilment, :vcr do
  describe '#initialize' do
    it 'creates a MoveAilment object from raw json data' do
      raw_data = Fetcher.call(:move_ailment, 1)
      move_ailment = PokeApi::MoveAilment.new(raw_data)

      expect(move_ailment.class).to eq(PokeApi::MoveAilment)
      expect(move_ailment.id).to eq(1)
      expect(move_ailment.name).to eq('paralysis')
      expect(move_ailment.names.first.class).to eq(PokeApi::Common::Name)
      expect(move_ailment.moves.first.class).to eq(PokeApi::Move)
    end
  end
end
