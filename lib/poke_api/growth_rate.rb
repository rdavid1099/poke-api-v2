module PokeApi
  # GrowthRate object handling all data fetched from /growth-rate
  class GrowthRate < NamedApiResource
    attr_reader :formula,
                :descriptions,
                :levels,
                :pokemon_species

    def initialize(data)
      assign_data(data)
    end

    private

    def custom_endpoint_object
      { levels: GrowthRateExperienceLevel }
    end
  end
end
