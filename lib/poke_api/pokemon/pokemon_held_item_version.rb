module PokeApi
  class Pokemon
    # PokemonHeldItemVersion object handling all data fetched from /pokemon held_items
    class PokemonHeldItemVersion
      attr_reader :rarity,
                  :version

      def initialize(data)
        @rarity = data[:rarity]
        @version = Version.new(data[:version])
      end
    end
  end
end
