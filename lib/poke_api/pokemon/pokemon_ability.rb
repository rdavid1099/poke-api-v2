module PokeApi
  class Pokemon
    # PokemonAbility object handling all data fetched from /pokemon abilities
    class PokemonAbility
      attr_reader :is_hidden,
                  :slot,
                  :ability

      def initialize(data)
        @is_hidden = data[:is_hidden]
        @slot = data[:slot]
        @ability = Ability.new(data[:ability])
      end
    end
  end
end
