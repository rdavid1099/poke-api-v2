module PokeApi
  class LocationArea
    # EncounterMethodRate object handling encounter_method_rate data fetched from /location-area
    class EncounterMethodRate
      include AssignmentHelpers

      attr_reader :encounter_method,
                  :version_details

      def initialize(data)
        @encounter_method = PokeApi::EncounterMethod.new(data[:encounter_method])
        @version_details  = assign_list(
          data: data[:version_details],
          klass: EncounterVersionDetail
        )
      end
    end
  end
end
