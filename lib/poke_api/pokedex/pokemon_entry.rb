module PokeApi
  class Pokedex
    # Pokdex object handling all data fetched from /pokedex
    class PokemonEntry
      attr_reader :entry_number,
                  :pokemon_species

      def initialize(data)
        @entry_number = data[:entry_number]
        @pokemon_species = PokemonSpecies.new(data[:pokemon_species])
      end
    end
  end
end
