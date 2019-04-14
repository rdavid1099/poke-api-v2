module PokeApi
  # ItemFlingEffect object handling all data fetched from /machine
  class ItemFlingEffect < NamedApiResource
    attr_reader :effect_entries,
                :items

    def initialize(data)
      assign_data(data)
    end
  end
end
