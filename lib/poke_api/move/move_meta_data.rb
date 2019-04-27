module PokeApi
  class Move
    # MoveMetaData object handling all data fetched from /move for meta
    class MoveMetaData
      attr_reader :ailment,
                  :category,
                  :min_hits,
                  :max_hits,
                  :min_turns,
                  :max_turns,
                  :drain,
                  :healing,
                  :crit_rate,
                  :ailment_chance,
                  :flinch_chance,
                  :stat_chance

      def initialize(data)
        @ailment = MoveAilment.new(data[:ailment])
        @category = MoveCategory.new(data[:category])
        @min_hits = data[:min_hits]
        @max_hits = data[:max_hits]
        @min_turns = data[:min_turns]
        @max_turns = data[:max_turns]
        @drain = data[:drain]
        @healing = data[:healing]
        @crit_rate = data[:crit_rate]
        @ailment_chance = data[:ailment_chance]
        @flinch_chance = data[:flinch_chance]
        @stat_chance = data[:stat_chance]
      end
    end
  end
end
