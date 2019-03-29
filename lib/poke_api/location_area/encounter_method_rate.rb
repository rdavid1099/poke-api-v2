module PokeApi
  class LocationArea
    # EncounterMethodRate object handling encounter_method_rate data fetched from /location-area
    class EncounterMethodRate < NamedApiResource
      attr_reader :encounter_method,
                  :version_details

      def initialize(data)
        assign_data(data)
      end
    end
  end
end
