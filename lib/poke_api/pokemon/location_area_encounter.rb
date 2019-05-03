module PokeApi
  class Pokemon
    # LocationAreaEncounter object handling all data fetched from /pokemon location_area_encounters
    class LocationAreaEncounter
      include AssignmentHelpers

      attr_reader :location_area,
                  :version_details

      def initialize(data)
        @location_area = LocationArea.new(data[:location_area])
        @version_details = assign_list(
          data: data[:version_details],
          klass: Common::VersionEncounterDetail
        )
      end
    end
  end
end
