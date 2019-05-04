module PokeApi
  # EvolutionChain object handling all data fetched from /evolution-chain
  class EvolutionChain < NamedApiResource
    attr_reader :baby_trigger_item,
                :chain

    def initialize(data)
      assign_data(data)
    end

    # ChainLink object handling linked list type data regarding pokemon evolutions
    class ChainLink
      include AssignmentHelpers

      attr_reader :is_baby,
                  :species,
                  :evolution_details,
                  :evolves_to

      def initialize(data)
        @is_baby = data[:is_baby]
        @species = PokemonSpecies.new(data[:species])
        @evolution_details = assign_list(data: data[:evolution_details], klass: EvolutionDetail)
        @evolves_to = assign_list(data: data[:evolves_to], klass: ChainLink)
      end
    end

    private

    def custom_endpoint_object
      {
        baby_trigger_item: Item,
        chain: ChainLink
      }
    end
  end
end
