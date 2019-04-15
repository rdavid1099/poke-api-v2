module PokeApi
  module Common
    # VersionGroupFlavorText object handling lists of effects and languages
    class VersionGroupFlavorText
      attr_reader :text,
                  :language,
                  :version_group

      def initialize(data)
        @text = data[:text]
        @language = Utility::Language.new(data[:language])
        @version_group = VersionGroup.new(data[:version_group])
      end
    end
  end
end
