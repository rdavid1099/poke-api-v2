module PokeApi
  module Common
    # VersionGameIndex object handling lists of version_details
    # relating to game_index and version
    class VersionGameIndex
      attr_reader :game_index,
                  :version

      def initialize(data)
        @game_index = data[:game_index]
        @version = PokeApi::Version.new(data[:version])
      end
    end
  end
end
