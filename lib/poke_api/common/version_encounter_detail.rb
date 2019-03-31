module PokeApi
  module Common
    # VersionEncounterDetail object handling lists of version_details
    # relating to encounters and languages
    class VersionEncounterDetail
      attr_reader :encounter_details,
                  :max_chance,
                  :version

      def initialize(data)
        @encounter_details = assign_list(
          data: data[:encounter_details],
          klass: PokeApi::Common::Encounter
        )
        @max_chance        = data[:max_chance]
        @version           = PokeApi::Version.new(data[:version])
      end

      private

      def assign_list(data:, klass:)
        return unless data

        data.map do |raw|
          klass.new(raw)
        end
      end
    end
  end
end
