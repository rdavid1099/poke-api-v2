module PokeApi
  class GrowthRate
    # GrowthRateExperienceLevel object handling details data from /growth-rate levels
    class GrowthRateExperienceLevel
      attr_reader :level,
                  :experience

      def initialize(data)
        @level = data[:level]
        @experience = data[:experience]
      end
    end
  end
end
