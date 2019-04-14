module PokeApi
  # ItemAttribute object handling all data fetched from /item-attribute
  class ItemAttribute < NamedApiResource
    attr_reader :items,
                :names,
                :descriptions

    def initialize(data)
      assign_data(data)
    end
  end
end
