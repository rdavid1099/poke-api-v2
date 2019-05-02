module PokeApi
  class Gender
    # PokemonSpeciesGender object handling details data regarding pokemon evolutions
    class PokemonSpeciesGender
      attr_reader :rate,
                  :pokemon_species

      def initialize(data)
        @rate = data[:rate]
        @pokemon_species = PokemonSpecies.new(data[:pokemon_species])
      end
    end
  end
end
