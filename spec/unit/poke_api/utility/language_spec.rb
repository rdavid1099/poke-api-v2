include ApiHelperMethods

RSpec.describe PokeApi::Utility::Language, :vcr do
  describe '#initialize' do
    it 'creates a basic Language object from raw json data' do
      raw_data = {
        name: 'fr',
        url: 'https://pokeapi.co/api/v2/language/5/'
      }
      language = PokeApi::Utility::Language.new(raw_data)

      expect(language.class).to eq(PokeApi::Utility::Language)
      expect(language.name).to eq('fr')
      expect(language.url).to eq('https://pokeapi.co/api/v2/language/5/')
    end

    it 'fetches complete data if object is incomplete' do
      raw_data = {
        name: 'fr',
        url: 'https://pokeapi.co/api/v2/language/5/'
      }
      language = PokeApi::Utility::Language.new(raw_data)
      language.get

      expect(language.class).to eq(PokeApi::Utility::Language)
      expect(language.name).to eq('fr')
      expect(language.url).to eq('https://pokeapi.co/api/v2/language/5/')
    end
  end
end
