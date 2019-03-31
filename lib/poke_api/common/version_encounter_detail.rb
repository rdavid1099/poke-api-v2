module PokeApi
  module Common
    # VersionEncounterDetail object handling lists of version_details relating to encounters and languages
    class VersionEncounterDetail
      attr_reader :encounter_details,
                  :max_chance,
                  :version

      def initialize(data)
        # @encounter_details = PokeApi::Encounter.new(data[:encounter_details])
        @max_chance        = data[:max_chance]
        @version           = PokeApi::Version.new(data[:version])
      end
    end
  end
end
