module PokeApi
  module Common
    # Name object handling lists of names and languages
    class Name
      attr_reader :name,
                  :language

      def initialize(data)
        @name     = data[:name]
        @language = Utility::Language.new(data[:language])
      end
    end
  end
end
