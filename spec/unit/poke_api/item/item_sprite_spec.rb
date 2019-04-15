RSpec.describe PokeApi::Item::ItemSprites do
  describe '#initialize' do
    it 'creates a basic ItemSprites object from raw json data' do
      raw_data = {
        default: 'http://pokeapi.co/media/sprites/items/master-ball.png'
      }
      sprite = PokeApi::Item::ItemSprites.new(raw_data)

      expect(sprite.class).to eq(PokeApi::Item::ItemSprites)
      expect(sprite.default).to eq('http://pokeapi.co/media/sprites/items/master-ball.png')
    end
  end
end
