module PokeApi
  module Common
    # Name object handling lists of names and languages
    class GameIndex
      attr_reader :game_index,
                  :generation

      def initialize(data)
        @game_index = data[:game_index]
        # @generation = Generation.new(data[:generation])
      end
    end
  end
end
