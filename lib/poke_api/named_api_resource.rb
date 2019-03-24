module PokeApi
  # Base class with shared methods for all Named API Resources
  class NamedApiResource
    def get
      Fetcher.call_uri(url)
    end
  end
end
