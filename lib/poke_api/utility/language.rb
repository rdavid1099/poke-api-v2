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

      private

      def assign_data(data)
        @id       = data[:id]
        @iso3166  = data[:iso3166]
        @iso639   = data[:iso639]
        @name     = data[:name]
        @names    = sanitize_names_list(data[:names])
        @official = data[:official]
        @url      = data[:url]
      end
    end
  end
end
