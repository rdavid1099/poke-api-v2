BASE_URI = 'https://pokeapi.co/api/v2/'.freeze
ENDPOINTS = {
  pokedex: 'pokedex/',
  pokemon: 'pokemon/',
  version: 'version/',
  version_group: 'version-group/'
}.freeze
ENDPOINT_OBJECTS = {
  language: PokeApi::Utility::Language,
  names: PokeApi::Common::Name,
  pokedex: PokeApi::Pokedex,
  pokemon_entries: PokeApi::Pokedex::PokemonEntry,
  version: PokeApi::Version,
  version_group: PokeApi::VersionGroup
}.freeze
PATH = File.dirname(__FILE__)
POKEMON_COUNT = 751
