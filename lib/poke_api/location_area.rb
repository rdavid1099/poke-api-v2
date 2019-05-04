module PokeApi
  # LocationArea object handling all data fetched from /location-area
  class LocationArea < NamedApiResource
    attr_reader :encounter_method_rates,
                :game_index,
                :location,
                :names,
                :pokemon_encounters

    def initialize(data)
      assign_data(data)
    end

    private

    def custom_endpoint_object
      {
        encounter_method_rates: EncounterMethodRate,
        pokemon_encounters: PokemonEncounter
      }
    end
  end
end
