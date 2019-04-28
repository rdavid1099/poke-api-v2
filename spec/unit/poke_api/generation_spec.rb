RSpec.describe PokeApi::Generation, :vcr do
  describe '#initialize' do
    it 'creates a Generation object from raw json data' do
      raw_data = Fetcher.call(:generation, 1)
      generation = PokeApi::Generation.new(raw_data)

      expect(generation.class).to eq(PokeApi::Generation)
      expect(generation.id).to eq(1)
      expect(generation.name).to eq('generation-i')
      expect(generation.names.first.class).to eq(PokeApi::Common::Name)
      expect(generation.abilities).to eq([])
      expect(generation.main_region.class).to eq(PokeApi::Region)
      expect(generation.moves.first.class).to eq(PokeApi::Move)
      # expect(generation.pokemon_species.first.class).to eq(PokeApi::PokemonSpecies)
      expect(generation.types.first.class).to eq(PokeApi::Type)
      expect(generation.version_groups.first.class).to eq(PokeApi::VersionGroup)
    end
  end
end
