module PokeApi
  class PokeathlonStat
    # NaturePokeathlonStatAffect object handling all data fetched from
    # /pokeathlon-stat affecting_natures
    class NaturePokeathlonStatAffect
      attr_reader :max_change,
                  :nature

      def initialize(data)
        @max_change = data[:max_change]
        @nature = Nature.new(data[:nature])
      end
    end
  end
end
