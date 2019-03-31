BASE_URI = 'https://pokeapi.co/api/v2/'.freeze
ENDPOINTS = {
  location_area: 'location-area/',
  location: 'location/',
  move_learn_method: 'move-learn-method/',
  pokedex: 'pokedex/',
  pokemon: 'pokemon/',
  region: 'region/',
  version: 'version/',
  version_group: 'version-group/'
}.freeze
ENDPOINT_OBJECTS = {
  descriptions: PokeApi::Common::Description,
  encounter_method_rate: PokeApi::LocationArea::EncounterMethodRate,
  game_indices: PokeApi::Common::GameIndex,
  language: PokeApi::Utility::Language,
  location_area: PokeApi::LocationArea,
  location: PokeApi::Location,
  move_learn_method: PokeApi::MoveLearnMethod,
  names: PokeApi::Common::Name,
  pokedex: PokeApi::Pokedex,
  pokemon_encounter: PokeApi::LocationArea::PokemonEncounter,
  pokemon_entries: PokeApi::Pokedex::PokemonEntry,
  pokemon: PokeApi::Pokemon,
  region: PokeApi::Region,
  version: PokeApi::Version,
  version_details: PokeApi::Common::VersionEncounterDetail,
  version_group: PokeApi::VersionGroup
}.freeze
PATH = File.dirname(__FILE__)
POKEMON_COUNT = 751
