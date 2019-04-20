module PokeApi
  # EvolutionChain object handling all data fetched from /evolution-chain
  class EvolutionChain < NamedApiResource
    attr_reader :baby_trigger_item,
                :chain

    def initialize(data)
      assign_data(data)
    end
  end
end
