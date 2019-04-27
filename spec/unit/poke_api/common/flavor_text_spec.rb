RSpec.describe PokeApi::Common::FlavorText do
  describe '#initialize' do
    it 'creates a basic FlavorText object from raw json data' do
      raw_data = {
        flavor_text: "Enables the user to perform first in the next turn.",
        language: {
          name: "en",
          url: "https://pokeapi.co/api/v2/language/9/"
        }
      }
      ft = PokeApi::Common::FlavorText.new(raw_data)

      expect(ft.class).to eq(PokeApi::Common::FlavorText)
      expect(ft.flavor_text).to eq("Enables the user to perform first in the next turn.")
      expect(ft.language.class).to eq(PokeApi::Utility::Language)
      expect(ft.version).to eq(nil)
    end
  end
end
