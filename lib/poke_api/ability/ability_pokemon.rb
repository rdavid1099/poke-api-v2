module PokeApi
  class Ability
    # AbilityPokemon object handling all data fetched from /ability pokemon
    class AbilityPokemon
      attr_reader :is_hidden,
                  :slot,
                  :pokemon

      def initialize(data)
        @is_hidden = data[:is_hidden]
        @slot = data[:slot]
        @pokemon = Pokemon.new(data[:pokemon])
      end
    end
  end
end
