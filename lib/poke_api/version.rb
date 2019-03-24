module PokeApi
  # Version object handling all data fetched from /version
  class Version
    attr_reader :id,
                :name,
                :names,
                :version_group
    def initialize(data)
      @id            = data[:id]
      @name          = data[:name]
      @names         = sanitize_names_list(data[:names])
    end

    private

    def sanitize_names_list(raw_names)
      raw_names.map { |raw_name| Name.new(raw_name) }
    end
  end
end
