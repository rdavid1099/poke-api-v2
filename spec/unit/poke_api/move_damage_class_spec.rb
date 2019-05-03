RSpec.describe PokeApi::MoveDamageClass, :vcr do
  describe '#initialize' do
    it 'creates a MoveDamageClass object from raw json data' do
      raw_data = Fetcher.call(:move_damage_class, 1)
      move_damage_class = PokeApi::MoveDamageClass.new(raw_data)

      expect(move_damage_class.class).to eq(PokeApi::MoveDamageClass)
      expect(move_damage_class.id).to eq(1)
      expect(move_damage_class.name).to eq('status')
      expect(move_damage_class.names.first.class).to eq(PokeApi::Common::Name)
      expect(move_damage_class.descriptions.first.class).to eq(PokeApi::Common::Description)
      expect(move_damage_class.moves.first.class).to eq(PokeApi::Move)
    end
  end
end
