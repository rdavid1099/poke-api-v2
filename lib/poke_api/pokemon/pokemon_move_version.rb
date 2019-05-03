module PokeApi
  class Pokemon
    # PokemonMoveVersion object handling all data fetched from /pokemon moves
    class PokemonMoveVersion
      attr_reader :move_learn_method,
                  :level_learned_at,
                  :version_group

      def initialize(data)
        @level_learned_at = data[:level_learned_at]
        @move_learn_method = MoveLearnMethod.new(data[:move_learn_method])
        @version_group = VersionGroup.new(data[:version_group])
      end
    end
  end
end
