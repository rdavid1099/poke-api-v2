module PokeApi
  # Base class with shared methods for all Named API Resources
  class NamedApiResource
    def get
      data = Fetcher.call_uri(url)
      assign_data(data)
    end

    def sanitize_names_list(raw_names)
      return unless raw_names.class == Array

      raw_names.map { |raw_name| Common::Name.new(raw_name) }
    end
  end
end
