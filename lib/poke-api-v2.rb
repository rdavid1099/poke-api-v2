require_relative './config/setup' # rubocop:disable Naming/FileName

# Main module for gem operation
module PokeApi
  def self.get(**endpoint_opts)
    results = endpoint_opts.keys.map do |key|
      raw_data = Fetcher.call(key, endpoint_opts[key])
      ENDPOINT_OBJECTS[key].new(raw_data)
    end
    results.length == 1 ? results.first : results
  end

  def self.pokedex(query = nil)
    query ||= (rand(POKEMON_COUNT) + 1)
    get(pokemon: query)
  end
end
