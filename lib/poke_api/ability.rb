module PokeApi
  # Ability object handling all data fetched from /ability
  class Ability < NamedApiResource
    attr_reader :is_main_series,
                :generation,
                :names,
                :effect_entries,
                :effect_changes,
                :flavor_text_entries,
                :pokemon

    def initialize(data)
      assign_data(data)
    end

    private

    def custom_endpoint_object
      {
        effect_entries: Common::VerboseEffect,
        effect_changes: AbilityEffectChange,
        flavor_text_entries: AbilityFlavorText,
        pokemon: AbilityPokemon
      }
    end
  end
end
