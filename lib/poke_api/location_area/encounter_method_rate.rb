module PokeApi
  class LocationArea
    # Pokdex object handling all data fetched from /pokedex
    class EncounterMethodRate < NamedApiResource
      attr_reader :encounter_method,
                  :version_details

      def initialize(data)
        assign_data(data)
      end
    end
  end
end
