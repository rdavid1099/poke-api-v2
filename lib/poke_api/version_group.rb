module PokeApi
  # VersionGroup object handling all data fetched from /version_group
  class VersionGroup < NamedApiResource
    attr_reader :id,
                :name,
                :order,
                :url,
                :versions

    def initialize(data)
      assign_data(data)
    end
  end
end
