RSpec.describe PokeApi::MoveTarget, :vcr do
  describe '#initialize' do
    it 'creates a MoveTarget object from raw json data' do
      raw_data = Fetcher.call(:move_target, 1)
      move_target = PokeApi::MoveTarget.new(raw_data)

      expect(move_target.class).to eq(PokeApi::MoveTarget)
      expect(move_target.id).to eq(1)
      expect(move_target.name).to eq('specific-move')
      expect(move_target.names.first.class).to eq(PokeApi::Common::Name)
      expect(move_target.moves.first.class).to eq(PokeApi::Move)
      expect(move_target.descriptions.first.class).to eq(PokeApi::Common::Description)
    end
  end
end
