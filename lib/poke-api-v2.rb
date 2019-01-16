require 'utils/error_handling'

require 'poke_api/pokemon'
require 'poke_api/version'

module PokeApi
  def self.pokedex(id:, name:)
    ErrorHandling.raise_too_many_args_error if id && name
  end
end
