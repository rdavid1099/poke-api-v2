module PokeApi
  # EncounterCondition object handling all data fetched from /encounter-condition
  class EncounterCondition < NamedApiResource
    attr_reader :names,
                :values

    def initialize(data)
      assign_data(data)
    end

    private

    def custom_endpoint_object
      { values: EncounterConditionValue }
    end
  end
end
