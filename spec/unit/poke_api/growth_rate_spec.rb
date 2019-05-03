RSpec.describe PokeApi::GrowthRate, :vcr do
  describe '#initialize' do
    it 'creates a GrowthRate object from raw json data' do
      raw_data = Fetcher.call(:growth_rate, 1)
      growth_rate = PokeApi::GrowthRate.new(raw_data)

      expect(growth_rate.class).to eq(PokeApi::GrowthRate)
      expect(growth_rate.id).to eq(1)
      expect(growth_rate.name).to eq('slow')
      expect(growth_rate.formula).to eq('\\frac{5x^3}{4}')
      expect(growth_rate.descriptions.first.class).to eq(PokeApi::Common::Description)
      expect(growth_rate.levels.first.class).to eq(PokeApi::GrowthRate::GrowthRateExperienceLevel)
      expect(growth_rate.pokemon_species.first.class).to eq(PokeApi::PokemonSpecies)
    end
  end
end
