RSpec.describe PokeApi::Pokemon::PokemonAbility do
  describe '#initialize' do
    it 'creates a basic PokemonAbility object from raw json data' do
      raw_data = {
        is_hidden: true,
        slot: 3,
        ability: {
          name: "tinted-lens",
          url: "https://pokeapi.co/api/v2/ability/110/"
        }
      }
      ability = PokeApi::Pokemon::PokemonAbility.new(raw_data)

      expect(ability.class).to eq(PokeApi::Pokemon::PokemonAbility)
      expect(ability.is_hidden).to eq(true)
      expect(ability.slot).to eq(3)
      expect(ability.ability.class).to eq(PokeApi::Ability)
    end
  end
end
