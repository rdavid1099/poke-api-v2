module PokeApi
  # MoveCategory object handling all data fetched from /characteristic
  class MoveCategory < NamedApiResource
    attr_reader :descriptions,
                :moves

    def initialize(data)
      assign_data(data)
    end
  end
end
