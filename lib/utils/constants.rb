BASE_URI = 'https://pokeapi.co/api/v2/'.freeze
ENDPOINTS = {
  berry: 'berry/',
  encounter_condition_value: 'encounter-condition-value/',
  encounter_condition: 'encounter-condition/',
  encounter_method: 'encounter-method/',
  location_area: 'location-area/',
  location: 'location/',
  move_learn_method: 'move-learn-method/',
  pokedex: 'pokedex/',
  pokemon: 'pokemon/',
  region: 'region/',
  type: 'type/',
  version: 'version/',
  version_group: 'version-group/'
}.freeze
ENDPOINT_OBJECTS = {
  berry: PokeApi::Berry,
  condition: PokeApi::EncounterCondition,
  descriptions: PokeApi::Common::Description,
  encounter_details: PokeApi::Common::Encounter,
  encounter_method: PokeApi::EncounterMethod,
  encounter_method_rate: PokeApi::LocationArea::EncounterMethodRate,
  flavor: PokeApi::Berry::BerryFlavorMap,
  game_indices: PokeApi::Common::GameIndex,
  language: PokeApi::Utility::Language,
  location_area: PokeApi::LocationArea,
  location: PokeApi::Location,
  move_learn_method: PokeApi::MoveLearnMethod,
  names: PokeApi::Common::Name,
  natural_gift_type: PokeApi::Type,
  pokedex: PokeApi::Pokedex,
  pokemon_encounter: PokeApi::LocationArea::PokemonEncounter,
  pokemon_entries: PokeApi::Pokedex::PokemonEntry,
  pokemon: PokeApi::Pokemon,
  region: PokeApi::Region,
  values: PokeApi::EncounterConditionValue,
  version: PokeApi::Version,
  version_group: PokeApi::VersionGroup
}.freeze
PATH = File.dirname(__FILE__)
POKEMON_COUNT = 751
