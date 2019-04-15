module PokeApi
  module Common
    # VerboseEffect object handling lists of effects and languages
    class VerboseEffect
      attr_reader :effect,
                  :short_effect,
                  :language

      def initialize(data)
        @effect = data[:effect]
        @short_effect = data[:short_effect]
        @language = Utility::Language.new(data[:language])
      end
    end
  end
end
