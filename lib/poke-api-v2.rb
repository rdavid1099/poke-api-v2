require_relative './config/setup' # rubocop:disable Naming/FileName

# Main module for gem operation
module PokeApi
  class << self
    def get(unnamed_resource = nil, **endpoint_opts)
      endpoints = sanitize_endpoints(unnamed_resource, endpoint_opts)
      endpoints.map do |key, value|
        klass = value.class == Hash ? ApiResourceList : ENDPOINT_OBJECTS[key]
        klass.new(Fetcher.call(key, value))
      end.first
    end

    def pokedex(query = nil)
      query ||= (rand(POKEMON_COUNT) + 1)
      get(pokemon: query)
    end

    private

    def sanitize_endpoints(unnamed_resource, endpoint_opts)
      ErrorHandling.unnamed_resource_args if unnamed_resource && !endpoint_opts.empty?

      endpoint_opts[unnamed_resource] = { limit: 20 } if unnamed_resource
      endpoint_opts
    end
  end
end
