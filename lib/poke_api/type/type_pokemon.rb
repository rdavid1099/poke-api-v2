module PokeApi
  class Type
    # TypePokemon object handling slot and pokemon data
    class TypePokemon
      attr_reader :pokemon,
                  :slot

      def initialize(data)
        @pokemon = Pokemon.new(data[:pokemon])
        @slot = data[:slot]
      end
    end
  end
end
