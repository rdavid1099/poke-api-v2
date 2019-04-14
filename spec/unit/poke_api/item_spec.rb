RSpec.describe PokeApi::Item, :vcr do
  describe '#initialize' do
    it 'creates an Item object from raw json data' do
      raw_machine_data = Fetcher.call(:item, 397)
      raw_ball_data = Fetcher.call(:item, 1)
      machine = PokeApi::Item.new(raw_machine_data)
      master_ball = PokeApi::Item.new(raw_ball_data)

      expect(machine.id).to eq(397)
      expect(machine.name).to eq("hm01")
      expect(machine.cost).to eq(0)
      # expect(machine.attributes.first.class).to eq(PokeApi::ItemAttribute)
      # expect(machine.category).to eq(PokeApi::ItemCategory)
      expect(machine.effect_entries.first.class).to eq(PokeApi::Common::VerboseEffect)
      expect(machine.flavor_text_entries.first.class).to eq(PokeApi::Common::VersionGroupFlavorText)
      expect(machine.game_indices.first.class).to eq(PokeApi::Common::GenerationGameIndex)
      expect(machine.names.first.class).to eq(PokeApi::Common::Name)
      expect(machine.sprites.class).to eq(PokeApi::Item::ItemSprites)
      expect(machine.held_by_pokemon.first.class).to eq(PokeApi::Item::ItemHolderPokemon)
      # expect(machine.baby_trigger_for.class).to eq(PokeApi::EvolutionChain)
      expect(machine.machines.first.class).to eq(PokeApi::Common::MachineVersionDetail)
      expect(master_ball.fling_power).to eq(10)
      # expect(master_ball.fling_effect.class).to eq(PokeApi::ItemFlingEffect)
    end
  end
end