module PokeApi
  # Version object handling all data fetched from /version
  class Version
    attr_reader :id,
                :name,
                :names,
                :url,
                :version_group
    def initialize(data)
      @id    = data[:id]
      @name  = data[:name]
      @names = sanitize_names_list(data[:names])
      @url   = data[:url]
    end

    private

    def sanitize_names_list(raw_names)
      raw_names.map { |raw_name| Common::Name.new(raw_name) }
    end
  end
end
