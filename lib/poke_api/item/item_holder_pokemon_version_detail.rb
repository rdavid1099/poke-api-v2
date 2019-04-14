module PokeApi
  class Item
    # ItemHolderPokemonVersionDetail object handling all sprite data fetched from /item
    class ItemHolderPokemonVersionDetail
      attr_reader :rarity,
                  :version

      def initialize(data)
        @rarity = data[:rarity]
        @version = Version.new(data[:version])
      end
    end
  end
end
