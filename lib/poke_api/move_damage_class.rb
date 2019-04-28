module PokeApi
  # MoveDamageClass object handling all data fetched from /move-damage-class
  class MoveDamageClass < NamedApiResource
    attr_reader :descriptions,
                :moves,
                :names

    def initialize(data)
      assign_data(data)
    end
  end
end
