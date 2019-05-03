RSpec.describe PokeApi::Pokemon, :vcr do
  describe '#initialize' do
    it 'creates a Pokemon object from raw json data' do
      raw_data = Fetcher.call(:pokemon, 6)
      pokemon = PokeApi::Pokemon.new(raw_data)

      expect(pokemon.class).to eq(PokeApi::Pokemon)
      expect(pokemon.id).to eq(6)
      expect(pokemon.name).to eq('charizard')
      expect(pokemon.base_experience).to eq(240)
      expect(pokemon.height).to eq(17)
      expect(pokemon.is_default).to eq(true)
      expect(pokemon.order).to eq(7)
      expect(pokemon.weight).to eq(905)
      expect(pokemon.abilities.first.class).to eq(PokeApi::Pokemon::PokemonAbility)
      expect(pokemon.forms.first.class).to eq(PokeApi::PokemonForm)
      expect(pokemon.game_indices.first.class).to eq(PokeApi::Common::VersionGameIndex)
      expect(pokemon.held_items).to eq([])
      expect(pokemon.location_area_encounters).to eq("https://pokeapi.co/api/v2/pokemon/6/encounters")
      expect(pokemon.moves.first.class).to eq(PokeApi::Pokemon::PokemonMove)
      expect(pokemon.species.class).to eq(PokeApi::PokemonSpecies)
      expect(pokemon.sprites.class).to eq(PokeApi::Pokemon::PokemonSprites)
      expect(pokemon.stats.first.class).to eq(PokeApi::Pokemon::PokemonStat)
      expect(pokemon.types.first.class).to eq(PokeApi::Pokemon::PokemonType)
    end
  end
end
