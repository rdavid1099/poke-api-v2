RSpec.describe PokeApi::EncounterCondition, :vcr do
  describe '#initialize' do
    it 'creates a EncounterCondition object from raw json data' do
      raw_data = Fetcher.call(:encounter_condition, 1)
      encounter = PokeApi::EncounterCondition.new(raw_data)

      expect(encounter.class).to eq(PokeApi::EncounterCondition)
      expect(encounter.id).to eq(1)
      expect(encounter.name).to eq('swarm')
      expect(encounter.names.first.class).to eq(PokeApi::Common::Name)
      expect(encounter.values.first.class).to eq(PokeApi::EncounterConditionValue)
    end
  end
end
