RSpec.describe PokeApi::Machine, :vcr do
  describe '#initialize' do
    it 'creates a basic Machine object from raw json data' do
      raw_data = Fetcher.call(:machine, 1)
      machine = PokeApi::Machine.new(raw_data)

      expect(machine.class).to eq(PokeApi::Machine)
      expect(machine.id).to eq(1)
      expect(machine.item.class).to eq(PokeApi::Item)
      # expect(machine.move.class).to eq(PokeApi::Move)
      expect(machine.version_group.class).to eq(PokeApi::VersionGroup)
    end
  end
end
