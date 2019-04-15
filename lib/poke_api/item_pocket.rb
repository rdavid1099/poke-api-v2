module PokeApi
  # ItemPocket object handling all data fetched from /item-pocket
  class ItemPocket < NamedApiResource
    attr_reader :categories,
                :names

    def initialize(data)
      assign_data(data)
    end

    private

    def custom_endpoint_object
      { categories: ItemCategory }
    end
  end
end
