PATH = File.dirname(__FILE__)
require_relative './config/setup'

module PokeApi
  def self.pokedex(id: nil, name: nil)
    ErrorHandling.raise_too_many_args_error if id && name
    if id || name
      Fetcher.call(:pokemon, id || name)
    else
      Pokemon.random
    end
  end
end
