module PokeApi
  class EvolutionChain
    # EvolutionDetail object handling details data regarding pokemon evolutions
    class EvolutionDetail
      include AssignmentHelpers

      attr_reader :item,
                  :trigger,
                  :gender,
                  :held_item,
                  :known_move,
                  :known_move_type,
                  :location,
                  :min_level,
                  :min_happiness,
                  :min_beauty,
                  :min_affection,
                  :needs_overworld_rain,
                  :party_species,
                  :party_type,
                  :relative_physical_stats,
                  :time_of_day,
                  :trade_species,
                  :turn_upside_down

      # rubocop:disable Metrics/AbcSize, Metrics/MethodLength
      def initialize(data)
        @item = try_to_assign(data: data[:item], klass: Item)
        @trigger = try_to_assign(data: data[:trigger], klass: EvolutionTrigger)
        @gender = data[:gender]
        @held_item = try_to_assign(data: data[:held_item], klass: Item)
        @known_move = try_to_assign(data: data[:known_move], klass: Move)
        @known_move_type = try_to_assign(data: data[:known_move_type], klass: Type)
        @location = try_to_assign(data: data[:location], klass: Location)
        @min_level = data[:min_level]
        @min_happiness = data[:min_happiness]
        @min_beauty = data[:min_beauty]
        @min_affection = data[:min_affection]
        @needs_overworld_rain = data[:needs_overworld_rain]
        @party_species = try_to_assign(data: data[:party_species], klass: PokemonSpecies)
        @party_type = try_to_assign(data: data[:party_type], klass: Type)
        @relative_physical_stats = data[:relative_physical_stats]
        @time_of_day = data[:time_of_day]
        @trade_species = try_to_assign(data: data[:trade_species], klass: PokemonSpecies)
        @turn_upside_down = data[:turn_upside_down]
      end
      # rubocop:enable Metrics/AbcSize, Metrics/MethodLength
    end
  end
end
