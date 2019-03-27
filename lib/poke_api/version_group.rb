module PokeApi
  # VersionGroup object handling all data fetched from /version_group
  class VersionGroup < NamedApiResource
    attr_reader :id,
                :generation,
                :move_learn_methods,
                :name,
                :order,
                :pokedexes,
                :regions,
                :url,
                :versions

    def initialize(data)
      assign_data(data)
    end
  end
end
