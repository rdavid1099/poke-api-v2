module PokeApi
  # Nature object handling all data fetched from /nature
  class Nature < NamedApiResource
    attr_reader :decreased_stat,
                :increased_stat,
                :likes_flavor,
                :hates_flavor,
                :pokeathlon_stat_changes,
                :move_battle_style_preferences,
                :names

    def initialize(data)
      assign_data(data)
    end

    private

    def custom_endpoint_object
      {
        decreased_stat: Stat,
        increased_stat: Stat,
        pokeathlon_stat_changes: NatureStatChange,
        move_battle_style_preferences: MoveBattleStylePreference,
        likes_flavor: BerryFlavor,
        hates_flavor: BerryFlavor
      }
    end
  end
end
