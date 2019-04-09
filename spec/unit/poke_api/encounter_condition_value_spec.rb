RSpec.describe PokeApi::EncounterConditionValue, :vcr do
  describe '#initialize' do
    it 'creates a EncounterConditionValue object from raw json data' do
      raw_data = Fetcher.call(:encounter_condition_value, 1)
      em = PokeApi::EncounterConditionValue.new(raw_data)

      expect(em.class).to eq(PokeApi::EncounterConditionValue)
      expect(em.id).to eq(1)
      expect(em.name).to eq('swarm-yes')
      expect(em.names.last.name).to eq('During a swarm')
      expect(em.names.last.language.name).to eq('en')
      expect(em.condition.class).to eq(PokeApi::EncounterCondition)
    end
  end
end
