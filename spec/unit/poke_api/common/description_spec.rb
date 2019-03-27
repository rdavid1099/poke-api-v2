RSpec.describe PokeApi::Common::Description do
  describe '#initialize' do
    it 'creates a basic Description object from raw json data' do
      raw_data = {
        description: 'Wird gelernt, wenn ein Pokémon ein bestimmtes Level erreicht.',
        language: {
          name: 'de',
          url: 'https://pokeapi.co/api/v2/language/6/'
        }
      }
      description = PokeApi::Common::Description.new(raw_data)

      expect(description.class).to eq(PokeApi::Common::Description)
      expect(description.description).to eq('Wird gelernt, wenn ein Pokémon ein bestimmtes Level erreicht.')
      expect(description.language.class).to eq(PokeApi::Utility::Language)
    end
  end
end
