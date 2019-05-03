module PokeApi
  class Pokemon
    # PokemonStat object handling all data fetched from /pokemon stats
    class PokemonStat
      attr_reader :stat,
                  :effort,
                  :base_stat

      def initialize(data)
        @stat = Stat.new(data[:stat])
        @effort = data[:effort]
        @base_stat = data[:base_stat]
      end
    end
  end
end
