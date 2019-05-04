module PokeApi
  # Pokdex object handling all data fetched from /pokedex
  class Pokedex < NamedApiResource
    attr_reader :is_main_series,
                :names,
                :pokemon_entries,
                :region,
                :version_groups

    def initialize(data)
      assign_data(data)
    end

    private

    def custom_endpoint_object
      {
        pokemon_entries: PokemonEntry
      }
    end
  end
end
