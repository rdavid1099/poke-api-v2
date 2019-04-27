module PokeApi
  # MoveBattleStyle object handling all data fetched from /move-battle-style
  class MoveBattleStyle < NamedApiResource
    attr_reader :names

    def initialize(data)
      assign_data(data)
    end
  end
end
