RSpec.describe PokeApi::PokemonShape::AwesomeName do
  describe '#initialize' do
    it 'creates a basic AwesomeName object from raw json data' do
      raw_data = {
        awesome_name: "Pomaceous",
        language: {
          name: "en",
          url: "https://pokeapi.co/api/v2/language/9/"
        }
      }
      name = PokeApi::PokemonShape::AwesomeName.new(raw_data)

      expect(name.class).to eq(PokeApi::PokemonShape::AwesomeName)
      expect(name.awesome_name).to eq('Pomaceous')
      expect(name.language.class).to eq(PokeApi::Utility::Language)
    end
  end
end
