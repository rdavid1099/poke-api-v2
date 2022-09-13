require_relative './config/setup' # rubocop:disable Naming/FileName

# Main module for gem operation
module PokeApi
  class << self
    def get(unnamed_resource = nil, **endpoint_opts)
      Fetcher.get_endpoints(unnamed_resource, endpoint_opts)
    end

    def get!(unnamed_resource = nil, **endpoint_opts)
      Fetcher.get_endpoints(unnamed_resource, endpoint_opts, throw_error: true)
    end

    def pokedex(query = nil)
      query ||= (rand(POKEMON_COUNT) + 1)
      get(pokemon: query)
    end
  end
end
