module PokeApi
  # LocationArea object handling all data fetched from /location-area
  class LocationArea < NamedApiResource
    attr_reader :id,
                :encounter_method_rates,
                :game_index,
                :location,
                :name,
                :names,
                :pokemon_encounters,
                :url

    def initialize(data)
      assign_data(data)
    end
  end
end
