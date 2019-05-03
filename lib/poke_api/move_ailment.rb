module PokeApi
  # MoveAilment object handling all data fetched from /move-ailment
  class MoveAilment < NamedApiResource
    attr_reader :moves,
                :names

    def initialize(data)
      assign_data(data)
    end
  end
end
