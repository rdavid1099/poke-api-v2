module PokeApi
  module Common
    # GenerationGameIndex object handling lists of game_index and generation
    class GenerationGameIndex
      attr_reader :game_index,
                  :generation

      def initialize(data)
        @game_index = data[:game_index]
        @generation = Generation.new(data[:generation])
      end
    end
  end
end
