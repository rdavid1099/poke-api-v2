module PokeApi
  # PokemonShape object handling all data fetched from /pokemon-shape
  class PokemonShape < NamedApiResource
    attr_reader :awesome_names,
                :names,
                :pokemon_species

    def initialize(data)
      assign_data(data)
    end
  end
end
