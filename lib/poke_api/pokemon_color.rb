module PokeApi
  # PokemonColor object handling all data fetched from /pokemon-color
  class PokemonColor < NamedApiResource
    attr_reader :names,
                :pokemon_species

    def initialize(data)
      assign_data(data)
    end
  end
end
