module PokeApi
  # PokeathlonStat object handling all data fetched from /pokeathlon-stat
  class PokeathlonStat < NamedApiResource
    attr_reader :names,
                :affecting_natures

    def initialize(data)
      assign_data(data)
    end

    private

    def custom_endpoint_object
      { affecting_natures: NaturePokeathlonStatAffectSets }
    end
  end
end
