RSpec.describe PokeApi::Type, :vcr do
  describe '#initialize' do
    it 'creates a Type object from raw json data' do
      raw_data = Fetcher.call(:type, 5)
      type = PokeApi::Type.new(raw_data)

      expect(type.class).to eq(PokeApi::Type)
      expect(type.id).to eq(5)
      expect(type.name).to eq('ground')
      expect(type.damage_relations.class).to eq(PokeApi::Type::TypeRelations)
      expect(type.game_indices.first.class).to eq(PokeApi::Common::GenerationGameIndex)
      # expect(type.generation.class).to eq(PokeApi::Generation)
      # expect(type.move_damage_class.class).to eq(PokeApi::MoveDamageClass)
      expect(type.names.first.class).to eq(PokeApi::Common::Name)
      expect(type.pokemon.first.class).to eq(PokeApi::Type::TypePokemon)
      # expect(type.moves.first.class).to eq(PokeApi::Move)
    end
  end
end
