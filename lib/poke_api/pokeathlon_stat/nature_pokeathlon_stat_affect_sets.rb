module PokeApi
  class PokeathlonStat
    # NaturePokeathlonStatAffectSets object handling all data fetched from
    # /pokeathlon-stat affecting_natures
    class NaturePokeathlonStatAffectSets
      include AssignmentHelpers

      attr_reader :increase,
                  :decrease

      def initialize(data)
        @increase = assign_list(
          data: data[:increase],
          klass: NaturePokeathlonStatAffect
        )
        @decrease = assign_list(
          data: data[:decrease],
          klass: NaturePokeathlonStatAffect
        )
      end
    end
  end
end
