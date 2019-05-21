# Poke-Api-V2

[![Gem Version](https://badge.fury.io/rb/poke-api-v2.svg)](https://badge.fury.io/rb/poke-api-v2)
[![Build Status](https://semaphoreci.com/api/v1/rworkman1099/poke-api-v2/branches/master/badge.svg)](https://semaphoreci.com/rworkman1099/poke-api-v2)
[![Maintainability](https://api.codeclimate.com/v1/badges/1f0142f320ea41ce5fed/maintainability)](https://codeclimate.com/github/rdavid1099/poke-api-v2/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/1f0142f320ea41ce5fed/test_coverage)](https://codeclimate.com/github/rdavid1099/poke-api-v2/test_coverage)

A simplified interface for interacting with the [PokéAPI](https://pokeapi.co/docs/v2.html) version 2 - `https://pokeapi.co/api/v2/`

## Requirements
* Ruby >= 2.0.0

Poke-Api-V2 depends on these other gems for usage at runtime:
* [net/http] consumes the [PokéAPI](https://pokeapi.co/docs/v2.html)
* [json] parses the [PokéAPI](https://pokeapi.co/docs/v2.html) response

## Installation
Add the following line to a Gemfile:

    gem 'poke-api-v2'

and run `bundle install` from your shell.

If you use Rubygems, run this command manually from your shell to install the latest poke-api-v2 version:

    gem install poke-api-v2


## Usage
Once the gem is installed simply require it and call any of the 48 endpoints using `PokeApi#get`.
```ruby
require 'poke-api-v2'

PokeApi.get(pokemon: 'bulbasaur') # Fetches data from https://pokeapi.co/api/v2/pokemon/bulbasaur/
# => #<PokeApi::Pokemon:0x007fe36c2cfc70
# @abilities=
#  [#<PokeApi::Pokemon::PokemonAbility:0x007fe36c2cfba8 @ability=#<PokeApi::Ability:0x007fe36c2cfb80 @name="chlorophyll", @url="https://pokeapi.co/api/v2/ability/34/">, @is_hidden=true, @slot=3>,
#   #<PokeApi::Pokemon::PokemonAbility:0x007fe36c2cf630 @ability=#<PokeApi::Ability:0x007fe36c2cf590 @name="overgrow", @url="https://pokeapi.co/api/v2/ability/65/">, @is_hidden=false, @slot=1>],
# @base_experience=64,
# @forms=[#<PokeApi::PokemonForm:0x007fe36c2cee10 @name="bulbasaur", @url="https://pokeapi.co/api/v2/pokemon-form/1/">],
# @game_indices=
#  [...

PokeApi.get(super_contest_effect: 1) # Fetches data from https://pokeapi.co/api/v2/super-contest-effect/1/
# => #<PokeApi::SuperContestEffect:0x007fe36b1976d8
#  @appeal=2,
#  @flavor_text_entries=
#   [#<PokeApi::Common::FlavorText:0x007fe36b197430
#     @flavor_text="Enables the user to perform first in the next turn.",
#     @language=#<PokeApi::Utility::Language:0x007fe36b197408 @name="en", @url="https://pokeapi.co/api/v2/language/9/">,
#     @version=nil>],
#  @id=1,
#  @moves=
#   [#<PokeApi::Move:0x007fe36b196f30 @name="agility", @url="https://pokeapi.co/api/v2/move/97/">,
```

`PokeApi#get` returns the result of the query or `nil` if no results are captured. You can also use the bang method `PokeApi#get!` which will throw an exception if no results are found.

```ruby
PokeApi.get!(version: 123456)
# => ResultsNotFound: No results found for query 'version: 123456'
```

Almost all endpoints can be queried by either the name or id in accordance with the [PokéAPI Docs](https://pokeapi.co/docs/v2.html).

You can also chain fetches together allowing Poke-Api-V2 to make multiple API calls with one command.

```ruby
# Call https://pokeapi.co/api/v2/pokedex/2/ -> https://pokeapi.co/api/v2/pokemon-species/1/ -> https://pokeapi.co/api/v2/evolution-chain/1/
evolution_chain = PokeApi.get(pokedex: 2).pokemon_entries.first.pokemon_species.get.evolution_chain.get
# => [#<PokeApi::EvolutionChain::ChainLink:0x007fe36c31d718
#   @evolution_details=...

evolution_chain.chain.evolves_to.first.species.name
# => "ivysaur"
```

The [PokéAPI](https://pokeapi.co/docs/v2.html) also allows you to create lists of paginated endpoints for any resource. This can be achieved in a couple different ways using Poke-Api-V2.

First, you can call any endpoint without passing an id or name. This will generate a list of the 20 first resources allowing pagination per 20.

```ruby
PokeApi.get(:ability)
# => #<PokeApi::ApiResourceList:0x007fe36c31ce80
#  @count=293,
#  @next_url="https://pokeapi.co/api/v2/ability/?offset=20&limit=20",
#  @previous_url=nil,
#  @results=
#   [#<PokeApi::Ability:0x007fe36c31cd40 @name="stench", @url="https://pokeapi.co/api/v2/ability/1/">,
#    #<PokeApi::Ability:0x007fe36c31c610 @name="drizzle", @url="https://pokeapi.co/api/v2/ability/2/">,
#    #<PokeApi::Ability:0x007fe36c31c250 @name="speed-boost", @url="https://pokeapi.co/api/v2/ability/3/">,
#    #<PokeApi::Ability:0x007fe36b2b7e50 @name="battle-armor", @url="https://pokeapi.co/api/v2/ability/4/">,
#    #<PokeApi::Ability:0x007fe36b2b79c8 @name="sturdy", @url="https://pokeapi.co/api/v2/ability/5/">,
#    #<PokeApi::Ability:0x007fe36b2b75b8 @name="damp", @url="https://pokeapi.co/api/v2/ability/6/">,
#    #<PokeApi::Ability:0x007fe36b2b71f8 @name="limber", @url="https://pokeapi.co/api/v2/ability/7/">,
#    #<PokeApi::Ability:0x007fe36b2b6e38 @name="sand-veil", @url="https://pokeapi.co/api/v2/ability/8/">,
#    #<PokeApi::Ability:0x007fe36b2b6a50 @name="static", @url="https://pokeapi.co/api/v2/ability/9/">,
#    #<PokeApi::Ability:0x007fe36b2b6690 @name="volt-absorb", @url="https://pokeapi.co/api/v2/ability/10/">,
#    #<PokeApi::Ability:0x007fe36b2b6230 @name="water-absorb", @url="https://pokeapi.co/api/v2/ability/11/">,
#    #<PokeApi::Ability:0x007fe36b2b5ee8 @name="oblivious", @url="https://pokeapi.co/api/v2/ability/12/">,
#    #<PokeApi::Ability:0x007fe36b2b5880 @name="cloud-nine", @url="https://pokeapi.co/api/v2/ability/13/">,
#    #<PokeApi::Ability:0x007fe36b2b5538 @name="compound-eyes", @url="https://pokeapi.co/api/v2/ability/14/">,
#    #<PokeApi::Ability:0x007fe36b2b4520 @name="insomnia", @url="https://pokeapi.co/api/v2/ability/15/">,
#    #<PokeApi::Ability:0x007fe36b2b4020 @name="color-change", @url="https://pokeapi.co/api/v2/ability/16/">,
# ...

PokeApi.get(:ability).results[4].get # Fetches data from https://pokeapi.co/api/v2/ability/5/
```

Second, you can specify the limit and pagination values by passing through the parameters.

```ruby
PokeApi.get(pokemon_shape: {limit: 5, offset: 5})
# => #<PokeApi::ApiResourceList:0x007fe36c1ad158
#  @count=14,
#  @next_url="https://pokeapi.co/api/v2/pokemon-shape/?offset=10&limit=4",
#  @previous_url="https://pokeapi.co/api/v2/pokemon-shape/?offset=0&limit=5",
#  @results=
#   [#<PokeApi::PokemonShape:0x007fe36c1ad0b8 @name="upright", @url="https://pokeapi.co/api/v2/pokemon-shape/6/">,
#    #<PokeApi::PokemonShape:0x007fe36c1acc30 @name="legs", @url="https://pokeapi.co/api/v2/pokemon-shape/7/">,
#    #<PokeApi::PokemonShape:0x007fe36c1ac7f8 @name="quadruped", @url="https://pokeapi.co/api/v2/pokemon-shape/8/">,
#    #<PokeApi::PokemonShape:0x007fe36c1ac460 @name="wings", @url="https://pokeapi.co/api/v2/pokemon-shape/9/">,
#    #<PokeApi::PokemonShape:0x007fe36b277da0 @name="tentacles", @url="https://pokeapi.co/api/v2/pokemon-shape/10/">]>

PokeApi.get(pokemon_shape: {limit: 5, page: 2})
# => #<PokeApi::ApiResourceList:0x007fe36c1bc928
#  @count=14,
#  @next_url="https://pokeapi.co/api/v2/pokemon-shape/?offset=10&limit=4",
#  @previous_url="https://pokeapi.co/api/v2/pokemon-shape/?offset=0&limit=5",
#  @results=
#   [#<PokeApi::PokemonShape:0x007fe36c1bc658 @name="upright", @url="https://pokeapi.co/api/v2/pokemon-shape/6/">,
#    #<PokeApi::PokemonShape:0x007fe36c1b6730 @name="legs", @url="https://pokeapi.co/api/v2/pokemon-shape/7/">,
#    #<PokeApi::PokemonShape:0x007fe36c1b4660 @name="quadruped", @url="https://pokeapi.co/api/v2/pokemon-shape/8/">,
#    #<PokeApi::PokemonShape:0x007fe36c19de60 @name="wings", @url="https://pokeapi.co/api/v2/pokemon-shape/9/">,
#    #<PokeApi::PokemonShape:0x007fe36c18f9f0 @name="tentacles", @url="https://pokeapi.co/api/v2/pokemon-shape/10/">]>
```

All of the data presented follows the identical patterns described by the API. For a complete list of endpoints and keys, please check out the [PokéAPI Docs](https://pokeapi.co/docs/v2.html).

## Contributing

Contributions are welcome! Be sure to read our [contributing guide](https://github.com/rdavid1099/poke-api-v2/blob/master/CONTRIBUTING.md) before working on an issue. Bug reports and pull requests are welcome on GitHub at https://github.com/rdavid1099/poke-api-v2.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
