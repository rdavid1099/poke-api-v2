RSpec.describe PokeApi::PokemonSpecies::Genus do
  describe '#initialize' do
    it 'creates a basic Genus object from raw json data' do
      raw_data = {
        genus: "Bagworm",
        language: {
          name: "en",
          url: "https://pokeapi.co/api/v2/language/9/"
        }
      }
      genus = PokeApi::PokemonSpecies::Genus.new(raw_data)

      expect(genus.class).to eq(PokeApi::PokemonSpecies::Genus)
      expect(genus.genus).to eq('Bagworm')
      expect(genus.language.class).to eq(PokeApi::Utility::Language)
    end
  end
end
