module PokeApi
  module Common
    # Description object handling lists of descriptions and languages
    class Description
      attr_reader :description,
                  :language

      def initialize(data)
        @description = data[:description]
        @language    = Utility::Language.new(data[:language])
      end
    end
  end
end
