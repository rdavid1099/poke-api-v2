RSpec.describe PokeApi::Pokemon::PokemonHeldItem do
  describe '#initialize' do
    it 'creates a basic PokemonHeldItem object from raw json data' do
      raw_data = {
        item: {
          name: "silver-powder",
          url: "https://pokeapi.co/api/v2/item/199/"
        },
        version_details: [
          {
            rarity: 5,
            version: {
              name: "y",
              url: "https://pokeapi.co/api/v2/version/24/"
            }
          }
        ]
      }
      held_item = PokeApi::Pokemon::PokemonHeldItem.new(raw_data)

      expect(held_item.class).to eq(PokeApi::Pokemon::PokemonHeldItem)
      expect(held_item.item.class).to eq(PokeApi::Item)
      expect(held_item.version_details.first.class).to eq(PokeApi::Pokemon::PokemonHeldItemVersion)
    end
  end
end
