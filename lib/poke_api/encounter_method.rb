module PokeApi
  # EncounterMethod object handling all data fetched from /encounter-method
  class EncounterMethod < NamedApiResource
    attr_reader :order,
                :names

    def initialize(data)
      assign_data(data)
    end
  end
end
