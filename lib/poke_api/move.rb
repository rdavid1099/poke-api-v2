module PokeApi
  # Move object handling all data fetched from /move
  class Move < NamedApiResource
    attr_reader :accuracy,
                :effect_chance,
                :pp,
                :priority,
                :power,
                :contest_combos,
                :contest_type,
                :contest_effect,
                :damage_class,
                :effect_entries,
                :effect_changes,
                :flavor_text_entries,
                :generation,
                :machines,
                :meta,
                :names,
                :past_values,
                :stat_changes,
                :super_contest_effect,
                :target,
                :type

    def initialize(data)
      assign_data(data)
    end

    private

    def custom_endpoint_object
      {
        contest_combos: ContestComboSets,
        damage_class: MoveDamageClass,
        effect_entries: Common::VerboseEffect,
        flavor_text_entries: MoveFlavorText,
        meta: MoveMetaData,
        past_values: PastMoveStatValue,
        stat_changes: MoveStatChange,
        target: MoveTarget
      }
    end
  end
end
