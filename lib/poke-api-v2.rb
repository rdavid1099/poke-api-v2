PATH = File.dirname(__FILE__)
require_relative './config/setup'

module PokeApi
  def self.pokedex(id:, name:)
    ErrorHandling.raise_too_many_args_error if id && name
  end
end
