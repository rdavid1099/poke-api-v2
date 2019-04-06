include ApiHelperMethods

RSpec.describe PokeApi::EncounterMethod, :vcr do
  describe '#initialize' do
    it 'creates a EncounterMethod object from raw json data' do
      raw_data = make_http_request(:encounter_method, 1)
      em = PokeApi::EncounterMethod.new(raw_data)

      expect(em.class).to eq(PokeApi::EncounterMethod)
      expect(em.id).to eq(1)
      expect(em.name).to eq('walk')
      expect(em.names.last.name).to eq('Walking in tall grass or a cave')
      expect(em.names.last.language.name).to eq('en')
      expect(em.order).to eq(1)
    end
  end
end
