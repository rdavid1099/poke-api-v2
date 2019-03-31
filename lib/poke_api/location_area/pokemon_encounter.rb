module PokeApi
  class LocationArea
    # PokemonEncounter object handling pokemon_encounters data fetched from /location-area
    class PokemonEncounter
      include AssignmentHelpers

      attr_reader :pokemon,
                  :version_details

      def initialize(data)
        @pokemon         = PokeApi::Pokemon.new(data[:pokemon])
        @version_details = assign_list(
          data: data[:version_details],
          klass: Common::VersionEncounterDetail
        )
      end
    end
  end
end
