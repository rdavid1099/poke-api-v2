module PokeApi
  module Common
    # Effect object handling lists of effects and languages
    class Effect
      attr_reader :effect,
                  :language

      def initialize(data)
        @effect = data[:effect]
        @language = Utility::Language.new(data[:language])
      end
    end
  end
end
