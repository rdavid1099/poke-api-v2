RSpec.describe PokeApi::Item, :vcr do
  describe '#initialize' do
    it 'creates an Item object from raw json data' do
      raw_machine_data = Fetcher.call(:item, 397)
      raw_poison_data = Fetcher.call(:item, 249)
      raw_egg_data = Fetcher.call(:item, 208)
      sea_incense_data = Fetcher.call(:item, 232)
      machine = PokeApi::Item.new(raw_machine_data)
      badly_poison = PokeApi::Item.new(raw_poison_data)
      lucky_egg = PokeApi::Item.new(raw_egg_data)
      sea_incense = PokeApi::Item.new(sea_incense_data)

      expect(machine.id).to eq(397)
      expect(machine.name).to eq('hm01')
      expect(machine.cost).to eq(0)
      expect(lucky_egg.attributes.first.class).to eq(PokeApi::ItemAttribute)
      expect(machine.attributes.first.class).to eq(NilClass)
      expect(machine.category.class).to eq(PokeApi::ItemCategory)
      expect(machine.effect_entries.first.class).to eq(PokeApi::Common::VerboseEffect)
      expect(machine.flavor_text_entries.first.class).to eq(PokeApi::Common::VersionGroupFlavorText)
      expect(machine.game_indices.first.class).to eq(PokeApi::Common::GenerationGameIndex)
      expect(machine.names.first.class).to eq(PokeApi::Common::Name)
      expect(machine.sprites.class).to eq(PokeApi::Item::ItemSprites)
      expect(lucky_egg.held_by_pokemon.first.class).to eq(PokeApi::Item::ItemHolderPokemon)
      expect(sea_incense.baby_trigger_for.class).to eq(PokeApi::EvolutionChain)
      expect(machine.machines.first.class).to eq(PokeApi::Common::MachineVersionDetail)
      expect(lucky_egg.fling_power).to eq(30)
      expect(badly_poison.fling_effect.class).to eq(PokeApi::ItemFlingEffect)
    end
  end

  describe '#get' do
    it 'assigns data to correct custom objects' do
      item = PokeApi::Item.new({ name: 'poke-ball', url: 'https://pokeapi.co/api/v2/item/4/' })
      item.get

      expect(item.sprites.class).to eq(PokeApi::Item::ItemSprites)
    end
  end
end
