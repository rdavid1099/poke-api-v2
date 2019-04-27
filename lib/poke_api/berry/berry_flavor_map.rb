module PokeApi
  class Berry
    # BerryFlavorMap object handling lists of flavors
    class BerryFlavorMap
      attr_reader :flavor,
                  :potency

      def initialize(data)
        @flavor  = PokeApi::BerryFlavor.new(data[:flavor])
        @potency = data[:potency]
      end
    end
  end
end
