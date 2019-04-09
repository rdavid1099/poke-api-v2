module PokeApi
  # VersionGroup object handling all data fetched from /version_group
  class VersionGroup < NamedApiResource
    attr_reader :generation,
                :move_learn_methods,
                :order,
                :pokedexes,
                :regions,
                :versions

    def initialize(data)
      assign_data(data)
    end
  end
end
