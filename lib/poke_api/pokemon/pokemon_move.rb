module PokeApi
  class Pokemon
    # PokemonMove object handling all data fetched from /pokemon moves
    class PokemonMove
      include AssignmentHelpers

      attr_reader :move,
                  :version_group_details

      def initialize(data)
        @move = Move.new(data[:move])
        @version_group_details = assign_list(
          data: data[:version_group_details],
          klass: PokemonMoveVersion
        )
      end
    end
  end
end
