module PokeApi
  # EncounterConditionValue object handling all data fetched from /encounter-condition-value
  class EncounterConditionValue < NamedApiResource
    attr_reader :condition,
                :names

    def initialize(data)
      assign_data(data)
    end
  end
end
