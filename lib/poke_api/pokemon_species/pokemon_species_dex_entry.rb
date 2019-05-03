module PokeApi
  class PokemonSpecies
    # PokemonSpeciesDexEntry object handling all data fetched from /pokemon-species pokedex_numbers
    class PokemonSpeciesDexEntry
      attr_reader :entry_number,
                  :pokedex

      def initialize(data)
        @entry_number = data[:entry_number]
        @pokedex = Pokedex.new(data[:pokedex])
      end
    end
  end
end
