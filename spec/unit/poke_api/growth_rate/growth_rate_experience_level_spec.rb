RSpec.describe PokeApi::GrowthRate::GrowthRateExperienceLevel do
  describe '#initialize' do
    it 'creates a basic GrowthRateExperienceLevel object from raw json data' do
      raw_data = {
        level: 100,
        experience: 1250000
      }
      grel = PokeApi::GrowthRate::GrowthRateExperienceLevel.new(raw_data)

      expect(grel.class).to eq(PokeApi::GrowthRate::GrowthRateExperienceLevel)
      expect(grel.level).to eq(100)
      expect(grel.experience).to eq(1250000)
    end
  end
end
