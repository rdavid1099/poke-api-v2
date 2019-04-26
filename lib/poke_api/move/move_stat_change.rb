module PokeApi
  class Move
    # MoveStatChange object handling all data fetched from /move for stat_changes
    class MoveStatChange
      attr_reader :change,
                  :stat

      def initialize(data)
        @change = data[:change]
        @stat = Stat.new(data[:stat])
      end
    end
  end
end
