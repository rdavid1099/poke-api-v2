module PokeApi
  # MoveLearnMethod object handling all data fetched from /move-learn-method
  class MoveLearnMethod < NamedApiResource
    attr_reader :names,
                :descriptions,
                :version_groups

    def initialize(data)
      assign_data(data)
    end
  end
end
