RSpec.describe PokeApi::Item::ItemHolderPokemon do
  describe '#initialize' do
    it 'creates a basic ItemHolderPokemon object from raw json data' do
      raw_data = {
        pokemon: {
          name: 'chansey',
          url: 'https://pokeapi.co/api/v2/pokemon/113/'
        },
        version_details: [
          {
            rarity: 50,
            version: {
              name: 'soulsilver',
              url: 'https://pokeapi.co/api/v2/version/16/'
            }
          }
        ]
      }
      ihd = PokeApi::Item::ItemHolderPokemon.new(raw_data)

      expect(ihd.class).to eq(PokeApi::Item::ItemHolderPokemon)
      expect(ihd.pokemon.class).to eq(PokeApi::Pokemon)
      expect(ihd.version_details.first.class).to eq(PokeApi::Item::ItemHolderPokemonVersionDetail)
    end
  end
end
