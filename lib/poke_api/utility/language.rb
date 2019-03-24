module PokeApi
  module Utility
    # Utility Language object used by several PokeApi endpoints
    class Language
      attr_reader :name,
                  :url

      def initialize(data)
        @name = data[:name]
        @url  = data[:url]
      end
    end
  end
end
