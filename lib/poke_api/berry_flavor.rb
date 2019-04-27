module PokeApi
  # BerryFlavor object handling all data fetched from /berry-flavor
  class BerryFlavor < NamedApiResource
    attr_reader :berries,
                :contest_type,
                :names

    def initialize(data)
      assign_data(data)
    end

    private

    def custom_endpoint_object
      {}
    end
  end
end
