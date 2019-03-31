module PokeApi
  class LocationArea
    class EncounterMethodRate
      # EncounterVersionDetail object handling version_details data on EncounterMethodRate
      class EncounterVersionDetail
        attr_reader :rate,
                    :version

        def initialize(data)
          @rate    = data[:rate]
          @version = Version.new(data[:version])
        end
      end
    end
  end
end
