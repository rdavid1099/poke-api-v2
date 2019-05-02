module PokeApi
  class PokemonSpecies
    # PalParkEncounterArea object handling all data fetched from /pokemon-species
    # pal_park_encounters
    class PalParkEncounterArea
      attr_reader :base_score,
                  :rate,
                  :area

      def initialize(data)
        @base_score = data[:base_score]
        @rate = data[:rate]
        @area = PalParkArea.new(data[:area])
      end
    end
  end
end
