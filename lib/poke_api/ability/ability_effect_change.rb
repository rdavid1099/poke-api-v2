module PokeApi
  class Ability
    # AbilityEffectChange object handling all data fetched from /ability effect_changes
    class AbilityEffectChange
      include AssignmentHelpers

      attr_reader :effect_entries,
                  :version_group

      def initialize(data)
        @effect_entries = assign_list(data: data[:effect_entries], klass: Common::Effect)
        @version_group = VersionGroup.new(data[:version_group])
      end
    end
  end
end
