module PokeApi
  # Pokdex object handling all data fetched from /pokedex
  class Pokedex < NamedApiResource
    attr_reader :id,
                :is_main_series,
                :name,
                :names,
                :pokemon_entries,
                :region,
                :url,
                :version_groups

    def initialize(data)
      assign_data(data)
    end
  end
end
