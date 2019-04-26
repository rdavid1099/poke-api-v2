module PokeApi
  class Move
    # ContestComboSets object handling all data fetched from /move for combo_sets
    class ContestComboSets
      attr_reader :normal,
                  :super

      def initialize(data)
        @normal = ContestComboDetail.new(data[:normal])
        @super = ContestComboDetail.new(data[:super])
      end
    end
  end
end
