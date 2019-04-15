module PokeApi
  # EncounterCondition object handling all data fetched from /encounter-condition
  class EncounterCondition < NamedApiResource
    attr_reader :names,
                :values

    def initialize(data)
      assign_data(data)
    end
  end
end
