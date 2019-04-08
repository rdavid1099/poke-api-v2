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

  def self.pokedex(id: nil, name: nil)
    ErrorHandling.raise_too_many_args_error if id && name
    query = id || name || (rand(POKEMON_COUNT) + 1)
    raw_data = Fetcher.call(:pokemon, query)
    PokeApi::Pokemon.new(raw_data)
  end
end
