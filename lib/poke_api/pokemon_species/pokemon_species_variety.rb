module PokeApi
  class PokemonSpecies
    # PokemonSpeciesVariety object handling all data fetched from /pokemon-species varieties
    class PokemonSpeciesVariety
      attr_reader :is_default,
                  :pokemon

      def initialize(data)
        @is_default = data[:is_default]
        @pokemon = Pokemon.new(data[:pokemon])
      end
    end
  end
end
