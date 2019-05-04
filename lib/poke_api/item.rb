module PokeApi
  # Item object handling all data fetched from /item
  class Item < NamedApiResource
    attr_reader :cost,
                :fling_power,
                :fling_effect,
                :attributes,
                :category,
                :effect_entries,
                :flavor_text_entries,
                :game_indices,
                :names,
                :sprites,
                :held_by_pokemon,
                :baby_trigger_for,
                :machines

    def initialize(data)
      assign_data(data)
    end

    private

    def custom_endpoint_object
      {
        attributes: ItemAttribute,
        baby_trigger_for: EvolutionChain,
        category: ItemCategory,
        effect_entries: Common::VerboseEffect,
        flavor_text_entries: Common::VersionGroupFlavorText,
        fling_effect: ItemFlingEffect,
        game_indices: Common::GenerationGameIndex,
        held_by_pokemon: Item::ItemHolderPokemon,
        machines: Common::MachineVersionDetail,
        sprites: ItemSprites
      }
    end
  end
end
