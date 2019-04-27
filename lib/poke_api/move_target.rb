module PokeApi
  # MoveTarget object handling all data fetched from /move-target
  class MoveTarget < NamedApiResource
    attr_reader :descriptions,
                :moves,
                :names

    def initialize(data)
      assign_data(data)
    end
  end
end
