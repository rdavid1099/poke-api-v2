module PokeApi
  class BerryFlavor
    # FlavorBerryMap object handling all data fetched from /berry-flavor berries
    class FlavorBerryMap
      attr_reader :berry,
                  :potency

      def initialize(data)
        @berry = Berry.new(data[:berry])
        @potency = data[:potency]
      end
    end
  end
end
