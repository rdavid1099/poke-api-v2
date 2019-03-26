include ApiHelperMethods

RSpec.describe PokeApi::Pokedex, :vcr do
  describe '#initialize' do
    it 'creates a Pokedex object from raw json data' do
      raw_data = make_http_request(:pokedex, 2)
      pokedex = PokeApi::Pokedex.new(raw_data)

      expect(pokedex.class).to eq(PokeApi::Pokedex)
      expect(pokedex.id).to eq(2)
      expect(pokedex.name).to eq('kanto')
      expect(pokedex.is_main_series).to eq(true)
      expect(pokedex.names.first.class).to eq(PokeApi::Common::Name)
      expect(pokedex.pokemon_entries.first.class).to eq(PokeApi::Pokedex::PokemonEntry)
      # expect(pokedex.region.name).to eq('kanto')
      expect(pokedex.url).to eq('https://pokeapi.co/api/v2/pokedex/2')
      expect(pokedex.version_groups.first.class).to eq(PokeApi::VersionGroup)
    end
  end
end
