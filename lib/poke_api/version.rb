module PokeApi
  # Version object handling all data fetched from /version
  class Version
    attr_reader :id,
                :name,
                :names,
                :version_groups
    def initialize(data)
      @id    = data[:id]
      @name  = data[:name]
      # @names = sanitize_names_list(data[:names])
    end
  end
end
