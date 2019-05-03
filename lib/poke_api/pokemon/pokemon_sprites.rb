module PokeApi
  class Pokemon
    # PokemonSprites object handling all data fetched from /pokemon sprites
    class PokemonSprites
      attr_reader :back_female,
                  :back_shiny_female,
                  :back_default,
                  :front_female,
                  :front_shiny_female,
                  :back_shiny,
                  :front_default,
                  :front_shiny

      def initialize(data)
        @back_female = data[:back_female]
        @back_shiny_female = data[:back_shiny_female]
        @back_default = data[:back_default]
        @front_female = data[:front_female]
        @front_shiny_female = data[:front_shiny_female]
        @back_shiny = data[:back_shiny]
        @front_default = data[:front_default]
        @front_shiny = data[:front_shiny]
      end
    end
  end
end
