require 'utils/error_handling'

require 'poke_api/pokemon'
require 'poke_api/version'

module PokeApi
  def self.pokedex(id:, name:)
    raise_too_many_args_error('id:', 'name:') if id && name
    req_id = id ||
  end
end
