require 'net/http'
require 'json'

path = __dir__

require "#{path}/../poke_api/named_api_resource"

require "#{path}/../poke_api/move_learn_method"
require "#{path}/../poke_api/pokedex"
require "#{path}/../poke_api/pokedex/pokemon_entry"
require "#{path}/../poke_api/pokemon"
require "#{path}/../poke_api/region"
require "#{path}/../poke_api/common/description"
require "#{path}/../poke_api/common/name"
require "#{path}/../poke_api/version"
require "#{path}/../poke_api/version_group"
require "#{path}/../poke_api/utility/language"
require "#{path}/../config/version"
require "#{path}/../utils/monkey_patch/symbol"
require "#{path}/../utils/fetcher"
require "#{path}/../utils/error_handling"
require "#{path}/../utils/constants"
require "#{path}/../poke-api-v2"
