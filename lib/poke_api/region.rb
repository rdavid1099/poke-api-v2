module PokeApi
  # Region object handling all data fetched from /region
  class Region < NamedApiResource
    attr_reader :id,
                :locations,
                :name,
                :names,
                :main_generation,
                :pokedexes,
                :version_groups

    def initialize(data)
      assign_data(data)
    end
  end
end
