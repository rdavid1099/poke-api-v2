module PokeApi
  class Item
    # ItemHolderPokemon object handling all sprite data fetched from /item
    class ItemHolderPokemon
      include AssignmentHelpers

      attr_reader :pokemon,
                  :version_details

      def initialize(data)
        @pokemon = Pokemon.new(data[:pokemon])
        @version_details = assign_list(
          data: data[:version_details],
          klass: ItemHolderPokemonVersionDetail
        )
      end
    end
  end
end
