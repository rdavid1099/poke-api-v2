RSpec.describe PokeApi::Common::VerboseEffect do
  describe '#initialize' do
    it 'creates a basic VerboseEffect object from raw json data' do
      raw_data = {
        effect: 'Used in battle',
        short_effect: 'Catches a wild Pokémon every time.',
        language: {
          name: 'en',
          url: 'https://pokeapi.co/api/v2/language/9/'
        }
      }
      verbose_effect = PokeApi::Common::VerboseEffect.new(raw_data)

      expect(verbose_effect.class).to eq(PokeApi::Common::VerboseEffect)
      expect(verbose_effect.effect).to eq('Used in battle')
      expect(verbose_effect.short_effect).to eq('Catches a wild Pokémon every time.')
      expect(verbose_effect.language.class).to eq(PokeApi::Utility::Language)
    end
  end
end
