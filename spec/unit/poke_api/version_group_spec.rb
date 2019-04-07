RSpec.describe PokeApi::VersionGroup, :vcr do
  include ApiHelperMethods

  describe '#initialize' do
    it 'creates a VersionGroup object from raw json data' do
      raw_data = make_http_request(:version_group, 1)
      version_group = PokeApi::VersionGroup.new(raw_data)

      expect(version_group.class).to eq(PokeApi::VersionGroup)
      expect(version_group.id).to eq(1)
      expect(version_group.name).to eq('red-blue')
      expect(version_group.order).to eq(1)
      expect(version_group.versions.first.class).to eq(PokeApi::Version)
      # expect(version_group.generation.class).to eq(PokeApi::Generation)
      expect(version_group.move_learn_methods.first.class).to eq(PokeApi::MoveLearnMethod)
      expect(version_group.pokedexes.first.class).to eq(PokeApi::Pokedex)
      expect(version_group.regions.first.class).to eq(PokeApi::Region)
    end
  end
end
