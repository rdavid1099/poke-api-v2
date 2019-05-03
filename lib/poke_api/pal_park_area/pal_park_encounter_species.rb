module PokeApi
  class PalParkArea
    # PalParkEncounterSpecies object handling details data from /pal-park-area pokemon_encounters
    class PalParkEncounterSpecies
      attr_reader :base_score,
                  :rate,
                  :pokemon_species

      def initialize(data)
        @base_score = data[:base_score]
        @rate = data[:rate]
        @pokemon_species = PokemonSpecies.new(data[:pokemon_species])
      end
    end
  end
end
