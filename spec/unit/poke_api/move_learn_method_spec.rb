RSpec.describe PokeApi::MoveLearnMethod, :vcr do
  describe '#initialize' do
    it 'creates a MoveLearnMethod object from raw json data' do
      raw_data = Fetcher.call(:move_learn_method, 1)
      move_learn_method = PokeApi::MoveLearnMethod.new(raw_data)

      expect(move_learn_method.class).to eq(PokeApi::MoveLearnMethod)
      expect(move_learn_method.id).to eq(1)
      expect(move_learn_method.name).to eq('level-up')
      expect(move_learn_method.names.first.class).to eq(PokeApi::Common::Name)
      expect(move_learn_method.descriptions.first.class).to eq(PokeApi::Common::Description)
      expect(move_learn_method.version_groups.first.class).to eq(PokeApi::VersionGroup)
    end
  end
end
