module PokeApi
  # PokemonSpecies object handling all data fetched from /pokemon-species
  class PokemonSpecies < NamedApiResource
    attr_reader :order,
                :gender_rate,
                :capture_rate,
                :base_happiness,
                :is_baby,
                :hatch_counter,
                :has_gender_differences,
                :forms_switchable,
                :growth_rate,
                :pokedex_numbers,
                :egg_groups,
                :color,
                :shape,
                :evolves_from_species,
                :evolution_chain,
                :habitat,
                :generation,
                :names,
                :flavor_text_entries,
                :form_descriptions,
                :genera,
                :varieties

    def initialize(data)
      assign_data(data)
    end

    private

    def custom_endpoint_object
      {}
    end
  end
end
