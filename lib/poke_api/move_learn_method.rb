module PokeApi
  # MoveLearnMethod object handling all data fetched from /move-learn-method
  class MoveLearnMethod < NamedApiResource
    attr_reader :id,
                :name,
                :order,
                :url,
                :versions

    def initialize(data)
      assign_data(data)
    end
  end
end
