module PokeApi
  class Item
    # ItemSprites object handling all sprite data fetched from /item
    class ItemSprites
      attr_reader :default

      def initialize(data)
        @default = data[:default]
      end
    end
  end
end
