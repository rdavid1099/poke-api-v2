module PokeApi
  # Location object handling all data fetched from /location
  class Location < NamedApiResource
    attr_reader :id,
                :areas,
                :name,
                :names,
                :region,
                :game_indices,
                :url

    def initialize(data)
      assign_data(data)
    end
  end
end
