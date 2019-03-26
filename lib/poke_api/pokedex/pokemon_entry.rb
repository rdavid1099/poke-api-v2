module PokeApi
  class Pokedex
    # Pokdex object handling all data fetched from /pokedex
    class PokemonEntry < NamedApiResource
      attr_reader :entry_number,
                  :pokemon_species

      def initialize(data)
        assign_data(data)
      end
    end
  end
end
