module PokeApi
  module Common
    # Encounter object handling lists of EncounterMethod and EncounterConditionValue
    class Encounter
      attr_reader :chance,
                  :condition_values,
                  :max_level,
                  :method,
                  :min_level

      def initialize(data)
        @chance = data[:chance]
        # @condition_values = PokeApi::EncounterConditionValue.new(data[:condition_values])
        @max_level = data[:max_level]
        @method = PokeApi::EncounterMethod.new(data[:method])
        @min_level = data[:min_level]
      end
    end
  end
end
