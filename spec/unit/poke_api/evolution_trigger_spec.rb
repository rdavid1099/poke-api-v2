RSpec.describe PokeApi::EvolutionTrigger, :vcr do
  describe '#initialize' do
    it 'creates a EvolutionTrigger object from raw json data' do
      raw_data = Fetcher.call(:evolution_trigger, 1)
      et = PokeApi::EvolutionTrigger.new(raw_data)

      expect(et.class).to eq(PokeApi::EvolutionTrigger)
      expect(et.id).to eq(1)
      expect(et.name).to eq('level-up')
      expect(et.names.first.class).to eq(PokeApi::Common::Name)
      expect(et.pokemon_species.first.class).to eq(PokeApi::PokemonSpecies)
    end
  end
end
