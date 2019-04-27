module PokeApi
  # Stat object handling all data fetched from /stat
  class Stat < NamedApiResource
    attr_reader :game_index,
                :is_battle_only,
                :affecting_moves,
                :affecting_natures,
                :characteristics,
                :move_damage_class,
                :names

    def initialize(data)
      assign_data(data)
    end

    private

    def custom_endpoint_object
      {
        affecting_moves: MoveStatAffectSets,
        affecting_natures: NatureStatAffectSets
      }
    end
  end
end
