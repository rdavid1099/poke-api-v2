module PokeApi
  # Pokemon object handling all data fetched from /pokemon
  class Pokemon < NamedApiResource
    attr_reader :base_experience,
                :height,
                :is_default,
                :order,
                :weight,
                :abilities,
                :forms,
                :game_indices,
                :held_items,
                :location_area_encounters,
                :moves,
                :species,
                :sprites,
                :stats,
                :types

    def initialize(data)
      assign_data(data)
    end

    private

    def custom_endpoint_object
      {
        abilities: PokemonAbility,
        forms: PokemonForm,
        game_indices: Common::VersionGameIndex,
        held_items: PokemonHeldItem,
        moves: PokemonMove,
        species: PokemonSpecies,
        sprites: PokemonSprites,
        stats: PokemonStat,
        types: PokemonType
      }
    end
  end
end
