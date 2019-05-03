module PokeApi
  class Pokemon
    # PokemonType object handling all data fetched from /pokemon types
    class PokemonType
      attr_reader :slot,
                  :type

      def initialize(data)
        @slot = data[:slot]
        @type = Type.new(data[:type])
      end
    end
  end
end
