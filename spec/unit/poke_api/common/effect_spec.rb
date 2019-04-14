RSpec.describe PokeApi::Common::Effect do
  describe '#initialize' do
    it 'creates a basic Effect object from raw json data' do
      raw_data = {
        effect: 'Badly poisons the target.',
        language: {
          name: 'en',
          url: 'https://pokeapi.co/api/v2/language/9/'
        }
      }
      description = PokeApi::Common::Effect.new(raw_data)

      expect(description.class).to eq(PokeApi::Common::Effect)
      expect(description.effect).to eq('Badly poisons the target.')
      expect(description.language.class).to eq(PokeApi::Utility::Language)
    end
  end
end
