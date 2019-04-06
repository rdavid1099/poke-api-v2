module PokeApi
  # Pokemon object handling all data fetched from /pokemon
  class Pokemon < NamedApiResource
    attr_reader :abilities,
                :base_experience,
                :forms,
                :game_indices,
                :height,
                :held_items,
                :is_default,
                :location_area_encounters,
                :moves,
                :order,
                :species,
                :sprites,
                :stats,
                :types,
                :weight

    def initialize(data)
      assign_data(data)
    end
  end
end
