module PokeApi
  # SuperContestEffect object handling all data fetched from /super-contest-effect
  class SuperContestEffect < NamedApiResource
    attr_reader :appeal,
                :flavor_text_entries,
                :moves

    def initialize(data)
      assign_data(data)
    end
  end
end
