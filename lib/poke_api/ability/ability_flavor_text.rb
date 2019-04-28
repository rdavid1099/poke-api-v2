module PokeApi
  class Ability
    # AbilityFlavorText object handling all data fetched from /ability flavor_text_entries
    class AbilityFlavorText
      attr_reader :flavor_text,
                  :language,
                  :version_group

      def initialize(data)
        @flavor_text = data[:flavor_text]
        @language = Utility::Language.new(data[:language])
        @version_group = VersionGroup.new(data[:version_group])
      end
    end
  end
end
