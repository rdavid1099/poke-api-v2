RSpec.describe PokeApi::Name do
  describe '#initialize' do
    it 'creates a basic Name object from raw json data' do
      raw_data = {
        language: {
          name: 'fr',
          url: 'https://pokeapi.co/api/v2/language/5/'
        },
        name: 'Rouge'
      }
      name_object = PokeApi::Name.new(raw_data)

      expect(name_object.class).to eq(PokeApi::Name)
      expect(name_object.name).to eq('Rouge')
    end
  end
end
