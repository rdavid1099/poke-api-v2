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

    private

    def custom_endpoint_object
      {
        effect_entries: Common::Effect,
        flavor_text_entries: Common::FlavorText
      }
    end
  end
end
