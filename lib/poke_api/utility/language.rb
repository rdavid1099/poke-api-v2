module PokeApi
  module Utility
    # Utility Language object used by several PokeApi endpoints
    class Language < NamedApiResource
      attr_reader :id,
                  :iso3166,
                  :iso639,
                  :name,
                  :names,
                  :official,
                  :url

      def initialize(data)
        assign_data(data)
      end
    end
  end
end
