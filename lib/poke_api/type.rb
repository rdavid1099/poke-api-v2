module PokeApi
  # Type object handling all data fetched from /type
  class Type < NamedApiResource
    attr_reader :damage_relations,
                :game_indices,
                :generation,
                :move_damage_class,
                :names,
                :pokemon,
                :move

    def initialize(data)
      assign_data(data)
    end

    private

    def custom_endpoint_object
      {
        damage_relations: TypeRelations,
        game_indices: Common::GenerationGameIndex,
        pokemon: TypePokemon
      }
    end
  end
end
