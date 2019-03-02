require_relative './config/setup'

# Main module for gem operation
module PokeApi
  def self.pokedex(id: nil, name: nil)
    ErrorHandling.raise_too_many_args_error if id && name
    query = id || name || (rand(POKEMON_COUNT) + 1)
    raw_data = Fetcher.call(:pokemon, query)
    Pokemon.new(raw_data)
  end
end
