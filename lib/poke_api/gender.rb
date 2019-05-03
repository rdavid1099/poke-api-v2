module PokeApi
  # Gender object handling all data fetched from /gender
  class Gender < NamedApiResource
    attr_reader :pokemon_species_details,
                :required_for_evolution

    def initialize(data)
      assign_data(data)
    end

    private

    def custom_endpoint_object
      {
        pokemon_species_details: PokemonSpeciesGender,
        required_for_evolution: PokemonSpecies
      }
    end
  end
end
