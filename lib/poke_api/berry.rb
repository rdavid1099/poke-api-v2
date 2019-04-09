module PokeApi
  # Berry object handling all data fetched from /berry
  class Berry < NamedApiResource
    attr_reader :growth_time,
                :max_harvest,
                :natural_gift_power,
                :size,
                :smoothness,
                :soil_dryness,
                :firmness,
                :flavors,
                :item,
                :natural_gift_type

    def initialize(data)
      assign_data(data)
    end
  end
end
