module PokeApi
  class Nature
    # NatureStatChange object handling all data fetched from /nature pokeathlon_stat_changes
    class NatureStatChange
      attr_reader :max_change,
                  :pokeathlon_stat

      def initialize(data)
        @max_change = data[:max_change]
        @pokeathlon_stat = PokeathlonStat.new(data[:pokeathlon_stat])
      end
    end
  end
end
