module PokeApi
  # EvolutionTrigger object handling all data fetched from /evolution-trigger
  class EvolutionTrigger < NamedApiResource
    attr_reader :names,
                :pokemon_species

    def initialize(data)
      assign_data(data)
    end

    private

    def custom_endpoint_object
      {
        baby_trigger_item: Item
      }
    end
  end
end
