module PokeApi
  class PokemonShape
    # PokemonShape object handling all data fetched from /pokemon-shape
    class AwesomeName
      attr_reader :awesome_name,
                  :language

      def initialize(data)
        @awesome_name = data[:awesome_name]
        @language = Utility::Language.new(data[:language])
      end
    end
  end
end
