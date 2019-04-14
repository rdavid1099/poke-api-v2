module PokeApi
  # ItemCategory object handling all data fetched from /item-category
  class ItemCategory < NamedApiResource
    attr_reader :items,
                :names,
                :pocket

    def initialize(data)
      assign_data(data)
    end
  end
end
