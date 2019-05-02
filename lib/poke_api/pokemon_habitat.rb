module PokeApi
  # PokemonHabitat object handling all data fetched from /pokemon-habitat
  class PokemonHabitat < NamedApiResource
    attr_reader :names,
                :pokemon_species

    def initialize(data)
      assign_data(data)
    end
  end
end
