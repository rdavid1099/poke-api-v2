module PokeApi
  class Move
    # PastMoveStatValue object handling all data fetched from /move for past_values
    class PastMoveStatValue
      include AssignmentHelpers

      attr_reader :accuracy,
                  :effect_chance,
                  :power,
                  :pp,
                  :effect_entries,
                  :type,
                  :version_group

      def initialize(data)
        @accuracy = data[:accuracy]
        @effect_chance = data[:effect_chance]
        @power = data[:power]
        @pp = data[:pp]
        @effect_entries = assign_list(data: data[:effect_entries], klass: Common::VerboseEffect)
        @type = try_to_assign(data: data[:type], klass: Type)
        @version_group = try_to_assign(data: data[:version_group], klass: VersionGroup)
      end
    end
  end
end
