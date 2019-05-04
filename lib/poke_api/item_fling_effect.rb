module PokeApi
  # ItemFlingEffect object handling all data fetched from /item-fling-effect
  class ItemFlingEffect < NamedApiResource
    attr_reader :effect_entries,
                :items

    def initialize(data)
      assign_data(data)
    end

    private

    def custom_endpoint_object
      { effect_entries: Common::Effect }
    end
  end
end
