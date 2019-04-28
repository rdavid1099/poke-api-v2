RSpec.describe PokeApi::Ability, :vcr do
  describe '#initialize' do
    it 'creates a Ability object from raw json data' do
      raw_data = Fetcher.call(:ability, 1)
      ability = PokeApi::Ability.new(raw_data)

      expect(ability.class).to eq(PokeApi::Ability)
      expect(ability.id).to eq(1)
      expect(ability.name).to eq('stench')
      expect(ability.is_main_series).to eq(true)
      expect(ability.generation.class).to eq(PokeApi::Generation)
      expect(ability.names.first.class).to eq(PokeApi::Common::Name)
      expect(ability.effect_entries.first.class).to eq(PokeApi::Common::VerboseEffect)
      expect(ability.effect_changes.first.class).to eq(PokeApi::Ability::AbilityEffectChange)
      expect(ability.flavor_text_entries.first.class).to eq(PokeApi::Ability::AbilityFlavorText)
      expect(ability.pokemon.first.class).to eq(PokeApi::Ability::AbilityPokemon)
    end
  end
end
