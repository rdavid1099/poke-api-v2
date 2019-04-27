module PokeApi
  # Characteristic object handling all data fetched from /characteristic
  class Characteristic < NamedApiResource
    attr_reader :gene_modulo,
                :possible_values,
                :highest_stat,
                :descriptions

    def initialize(data)
      assign_data(data)
    end

    private

    def custom_endpoint_object
      { highest_stat: Stat }
    end
  end
end
