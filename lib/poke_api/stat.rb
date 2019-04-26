module PokeApi
  # Stat object handling all data fetched from /stat
  class Stat < NamedApiResource
    attr_reader :game_index,
                :is_battle_only,
                :affecting_moves,
                :affecting_natures,
                :characteristics,
                :names

    def initialize(data)
      assign_data(data)
    end

    private

    def custom_endpoint_object
      {}
    end
  end
end
