module PokeApi
  # ContestType object handling all data fetched from /contest-type
  class ContestType < NamedApiResource
    attr_reader :berry_flavor,
                :names

    def initialize(data)
      assign_data(data)
    end
  end
end
