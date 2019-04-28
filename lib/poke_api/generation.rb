module PokeApi
  # Generation object handling all data fetched from /generation
  class Generation < NamedApiResource
    attr_reader :abilities,
                :main_region,
                :moves,
                :names,
                :pokemon_species,
                :types,
                :version_groups

    def initialize(data)
      assign_data(data)
    end
  end
end
