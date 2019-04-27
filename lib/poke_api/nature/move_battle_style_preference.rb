module PokeApi
  class Nature
    # MoveBattleStylePreference object handling all data fetched from
    # /nature move_battle_style_preferences
    class MoveBattleStylePreference
      attr_reader :low_hp_preference,
                  :high_hp_preference,
                  :move_battle_style

      def initialize(data)
        @low_hp_preference = data[:low_hp_preference]
        @high_hp_preference = data[:high_hp_preference]
        @move_battle_style = MoveBattleStyle.new(data[:move_battle_style])
      end
    end
  end
end
