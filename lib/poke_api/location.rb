module PokeApi
  # Location object handling all data fetched from /location
  class Location < NamedApiResource
    attr_reader :areas,
                :names,
                :region,
                :game_indices

    def initialize(data)
      assign_data(data)
    end
  end
end
