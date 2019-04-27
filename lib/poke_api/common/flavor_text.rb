module PokeApi
  module Common
    # FlavorText object handling lists of FlavorText
    class FlavorText
      include AssignmentHelpers

      attr_reader :flavor_text,
                  :language,
                  :version

      def initialize(data)
        @flavor_text = data[:flavor_text]
        @language = Utility::Language.new(data[:language])
        @version = try_to_assign(data: data[:version], klass: Version)
      end
    end
  end
end
