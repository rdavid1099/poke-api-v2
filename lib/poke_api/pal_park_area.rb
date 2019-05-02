module PokeApi
  # PalParkArea object handling all data fetched from /pal-park-area
  class PalParkArea < NamedApiResource
    attr_reader :names,
                :pokemon_encounters

    def initialize(data)
      assign_data(data)
    end

    private

    def custom_endpoint_object
      { pokemon_encounters: PalParkEncounterSpecies }
    end
  end
end
