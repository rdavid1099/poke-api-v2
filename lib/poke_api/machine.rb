module PokeApi
  # Machine object handling all data fetched from /machine
  class Machine < NamedApiResource
    attr_reader :item,
                :move,
                :version_group

    def initialize(data)
      assign_data(data)
    end
  end
end
