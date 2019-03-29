module PokeApi
  class LocationArea
    # PokemonEncounter object handling pokemon_encounters data fetched from /location-area
    class PokemonEncounter < NamedApiResource
      attr_reader :pokemon,
                  :version_details

      def initialize(data)
        assign_data(data)
      end
    end
  end
end
