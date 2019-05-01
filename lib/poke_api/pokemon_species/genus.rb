module PokeApi
  class PokemonSpecies
    # Genus object handling all data fetched from /pokemon-species genera
    class Genus
      attr_reader :genus,
                  :language

      def initialize(data)
        @genus = data[:genus]
        @language = Utility::Language.new(data[:language])
      end
    end
  end
end
