module PokeApi
  # ContestEffect object handling all data fetched from /contest-effect
  class ContestEffect < NamedApiResource
    attr_reader :appeal,
                :jam,
                :effect_entries,
                :flavor_text_entries

    def initialize(data)
      assign_data(data)
    end
  end
end
