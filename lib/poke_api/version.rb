module PokeApi
  # Version object handling all data fetched from /version
  class Version < NamedApiResource
    attr_reader :id,
                :name,
                :names,
                :url,
                :version_group

    def initialize(data)
      assign_data(data)
    end
  end
end
