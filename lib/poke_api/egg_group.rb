module PokeApi
  # EggGroup object handling all data fetched from /egg-group
  class EggGroup < NamedApiResource
    attr_reader :names,
                :pokemon_species

    def initialize(data)
      assign_data(data)
    end
  end
end
