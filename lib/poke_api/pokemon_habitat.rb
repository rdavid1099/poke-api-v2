module PokeApi
  # PokemonHabitat object handling all data fetched from /pal-park-area
  class PokemonHabitat < NamedApiResource
    attr_reader :names,
                :pokemon_species

    def initialize(data)
      assign_data(data)
    end
  end
end
