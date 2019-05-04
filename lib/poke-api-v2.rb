require_relative './config/setup' # rubocop:disable Naming/FileName

# Main module for gem operation
module PokeApi
  def self.get(unnamed_resource = nil, **endpoint_opts)
    if unnamed_resource
      raw_data = Fetcher.call(unnamed_resource).merge(resource_name: unnamed_resource)
      ApiResourceList.new(raw_data)
    else
      endpoint_opts.keys.map do |key|
        raw_data = Fetcher.call(key, endpoint_opts[key])
        ENDPOINT_OBJECTS[key].new(raw_data)
      end.first
    end
  end

  def self.pokedex(query = nil)
    query ||= (rand(POKEMON_COUNT) + 1)
    get(pokemon: query)
  end
end
