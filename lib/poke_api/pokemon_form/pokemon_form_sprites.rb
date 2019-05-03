module PokeApi
  class PokemonForm
    # PokemonFormSprites object handling all data fetched from /pokemon-form sprites
    class PokemonFormSprites
      attr_reader :back_default,
                  :back_shiny,
                  :front_default,
                  :front_shiny

      def initialize(data)
        @back_default = data[:back_default]
        @back_shiny = data[:back_shiny]
        @front_default = data[:front_default]
        @front_shiny = data[:front_shiny]
      end
    end
  end
end
