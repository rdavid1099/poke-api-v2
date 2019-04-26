module PokeApi
  class Stat
    # MoveStatAffect object handling all data fetched from /stat for affecting_moves
    class MoveStatAffect
      attr_reader :change,
                  :move

      def initialize(data)
        @change = data[:change]
        @move = Move.new(data[:move])
      end
    end
  end
end
