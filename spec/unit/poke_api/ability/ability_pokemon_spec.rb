RSpec.describe PokeApi::Ability::AbilityPokemon do
  describe '#initialize' do
    it 'creates a basic AbilityPokemon object from raw json data' do
      raw_data = {
        is_hidden: true,
        slot: 3,
        pokemon: {
          name: "gloom",
          url: "https://pokeapi.co/api/v2/pokemon/44/"
        }
      }
      ap = PokeApi::Ability::AbilityPokemon.new(raw_data)

      expect(ap.class).to eq(PokeApi::Ability::AbilityPokemon)
      expect(ap.is_hidden).to eq(true)
      expect(ap.slot).to eq(3)
      expect(ap.pokemon.class).to eq(PokeApi::Pokemon)
    end
  end
end
