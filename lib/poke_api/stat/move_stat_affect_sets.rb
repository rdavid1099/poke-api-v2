module PokeApi
  class Stat
    # MoveStatAffectSets object handling all data fetched from /stat for affecting_moves
    class MoveStatAffectSets
      include AssignmentHelpers

      attr_reader :increase,
                  :decrease

      def initialize(data)
        @increase = assign_list(data: data[:increase], klass: MoveStatAffect)
        @decrease = assign_list(data: data[:decrease], klass: MoveStatAffect)
      end
    end
  end
end
