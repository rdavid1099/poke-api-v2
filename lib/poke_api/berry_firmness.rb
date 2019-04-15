module PokeApi
  # BerryFirmness object handling all data fetched from /berry-firmness
  class BerryFirmness < NamedApiResource
    attr_reader :berries,
                :names

    def initialize(data)
      assign_data(data)
    end
  end
end
