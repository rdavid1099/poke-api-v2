RSpec.describe PokeApi::EggGroup, :vcr do
  describe '#initialize' do
    it 'creates a EggGroup object from raw json data' do
      raw_data = Fetcher.call(:egg_group, 1)
      egg_group = PokeApi::EggGroup.new(raw_data)

      expect(egg_group.class).to eq(PokeApi::EggGroup)
      expect(egg_group.id).to eq(1)
      expect(egg_group.name).to eq('monster')
      expect(egg_group.names.first.class).to eq(PokeApi::Common::Name)
      expect(egg_group.pokemon_species.first.class).to eq(PokeApi::PokemonSpecies)
    end
  end
end
