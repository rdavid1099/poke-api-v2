module PokeApi
  class Stat
    # NatureStatAffectSets object handling all data fetched from /stat for affecting_natures
    class NatureStatAffectSets
      include AssignmentHelpers

      attr_reader :increase,
                  :decrease

      def initialize(data)
        @increase = assign_list(data: data[:increase], klass: Nature)
        @decrease = assign_list(data: data[:decrease], klass: Nature)
      end
    end
  end
end
