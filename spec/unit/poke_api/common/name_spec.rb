RSpec.describe PokeApi::Common::Name do
  describe '#initialize' do
    it 'creates a basic Name object from raw json data' do
      raw_data = {
        language: {
          name: 'fr',
          url: 'https://pokeapi.co/api/v2/language/5/'
        },
        name: 'Rouge'
      }
      name_object = PokeApi::Common::Name.new(raw_data)

      expect(name_object.class).to eq(PokeApi::Common::Name)
      expect(name_object.name).to eq('Rouge')
      expect(name_object.language.class).to eq(PokeApi::Utility::Language)
    end
  end
end
