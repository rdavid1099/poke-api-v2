module PokeApi
  class Move
    # ContestComboDetail object handling all data from move[:contest_combos]
    class ContestComboDetail
      include AssignmentHelpers

      attr_reader :use_before,
                  :use_after

      def initialize(data)
        @use_before = assign_list(data: data[:use_before])
        @use_after = assign_list(data: data[:use_after])
      end
    end
  end
end
