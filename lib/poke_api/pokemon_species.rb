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
                :pal_park_encounters,
                :flavor_text_entries,
                :form_descriptions,
                :genera,
                :varieties

    def initialize(data)
      assign_data(data)
    end

    private

    def custom_endpoint_object
      {
        color: PokemonColor,
        pokedex_numbers: PokemonSpeciesDexEntry,
        evolves_from_species: PokemonSpecies,
        pal_park_encounters: PalParkEncounterArea,
        flavor_text_entries: Common::FlavorText,
        form_descriptions: Common::Description,
        genera: Genus,
        habitat: PokemonHabitat,
        shape: PokemonShape,
        varieties: PokemonSpeciesVariety
      }
    end
  end
end
