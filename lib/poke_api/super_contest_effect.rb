module PokeApi
  # SuperContestEffect object handling all data fetched from /super-contest-effect
  class SuperContestEffect < NamedApiResource
    attr_reader :appeal,
                :flavor_text_entries,
                :moves

    def initialize(data)
      assign_data(data)
    end

    private

    def custom_endpoint_object
      { flavor_text_entries: Common::FlavorText }
    end
  end
end
