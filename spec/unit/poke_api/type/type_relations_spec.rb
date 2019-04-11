RSpec.describe PokeApi::Type::TypeRelations do
  describe '#initialize' do
    it 'creates a basic TypeRelations object from raw json data' do
      raw_data = {
        no_damage_to: [{name: 'flying', url: 'https://pokeapi.co/api/v2/type/3/'}],
        half_damage_to: [{name: 'bug', url: 'https://pokeapi.co/api/v2/type/7/'}],
        double_damage_to: [{name: 'poison', url: 'https://pokeapi.co/api/v2/type/4/'}],
        no_damage_from: [{name: 'electric', url: 'https://pokeapi.co/api/v2/type/13/'}],
        half_damage_from: [{name: 'poison', url: 'https://pokeapi.co/api/v2/type/4/'}],
        double_damage_from: [{name: 'water', url: 'https://pokeapi.co/api/v2/type/11/'}]
      }
      tr = PokeApi::Type::TypeRelations.new(raw_data)

      expect(tr.class).to eq(PokeApi::Type::TypeRelations)
      expect(tr.no_damage_to.first.name).to eq('flying')
      expect(tr.half_damage_to.first.name).to eq('bug', )
      expect(tr.double_damage_to.first.name).to eq('poison')
      expect(tr.no_damage_from.first.name).to eq('electric')
      expect(tr.half_damage_from.first.name).to eq('poison')
      expect(tr.double_damage_from.first.name).to eq('water')
    end
  end
end
