module PokeApi
  class Pokemon
    # PokemonHeldItem object handling all data fetched from /pokemon held_items
    class PokemonHeldItem
      include AssignmentHelpers

      attr_reader :item,
                  :version_details

      def initialize(data)
        @item = Item.new(data[:item])
        @version_details = assign_list(
          data: data[:version_details],
          klass: PokemonHeldItemVersion
        )
      end
    end
  end
end
