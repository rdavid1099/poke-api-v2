module PokeApi
  class LocationArea
    # Pokdex object handling all data fetched from /pokedex
    class PokemonEncounter < NamedApiResource
      attr_reader :pokemon,
                  :version_details

      def initialize(data)
        assign_data(data)
      end
    end
  end
end
