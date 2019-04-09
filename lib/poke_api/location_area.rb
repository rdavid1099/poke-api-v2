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
  end
end
