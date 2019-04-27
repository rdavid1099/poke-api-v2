module PokeApi
  # Characteristic object handling all data fetched from /characteristic
  class Characteristic < NamedApiResource
    attr_reader :gene_modulo,
                :possible_values

    def initialize(data)
      assign_data(data)
    end
  end
end
