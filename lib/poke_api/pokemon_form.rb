module PokeApi
  # PokemonForm object handling all data fetched from /pokemon-form
  class PokemonForm < NamedApiResource
    attr_reader :order,
                :form_order,
                :is_default,
                :is_battle_only,
                :is_mega,
                :form_name,
                :pokemon,
                :sprites,
                :version_group,
                :names,
                :form_names

    def initialize(data)
      assign_data(data)
    end

    private

    def custom_endpoint_object
      {
        sprites: PokemonFormSprites,
        form_names: Common::Name
      }
    end
  end
end
