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

    private

    def assign_data(data)
      @id    = data[:id]
      @name  = data[:name]
      @names = sanitize_names_list(data[:names])
      @url   = data[:url]
    end
  end
end
