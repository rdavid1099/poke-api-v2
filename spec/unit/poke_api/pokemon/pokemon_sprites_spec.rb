RSpec.describe PokeApi::Pokemon::PokemonSprites do
  describe '#initialize' do
    it 'creates a basic PokemonSprites object from raw json data' do
      raw_data = {
        back_female: "http://pokeapi.co/media/sprites/pokemon/back/female/12.png",
        back_shiny_female: "http://pokeapi.co/media/sprites/pokemon/back/shiny/female/12.png",
        back_default: "http://pokeapi.co/media/sprites/pokemon/back/12.png",
        front_female: "http://pokeapi.co/media/sprites/pokemon/female/12.png",
        front_shiny_female: "http://pokeapi.co/media/sprites/pokemon/shiny/female/12.png",
        back_shiny: "http://pokeapi.co/media/sprites/pokemon/back/shiny/12.png",
        front_default: "http://pokeapi.co/media/sprites/pokemon/12.png",
        front_shiny: "http://pokeapi.co/media/sprites/pokemon/shiny/12.png"
      }
      sprite = PokeApi::Pokemon::PokemonSprites.new(raw_data)

      expect(sprite.class).to eq(PokeApi::Pokemon::PokemonSprites)
      expect(sprite.back_female).to eq("http://pokeapi.co/media/sprites/pokemon/back/female/12.png")
      expect(sprite.back_shiny_female).to eq("http://pokeapi.co/media/sprites/pokemon/back/shiny/female/12.png")
      expect(sprite.back_default).to eq("http://pokeapi.co/media/sprites/pokemon/back/12.png")
      expect(sprite.front_female).to eq("http://pokeapi.co/media/sprites/pokemon/female/12.png")
      expect(sprite.front_shiny_female).to eq("http://pokeapi.co/media/sprites/pokemon/shiny/female/12.png")
      expect(sprite.back_shiny).to eq("http://pokeapi.co/media/sprites/pokemon/back/shiny/12.png")
      expect(sprite.front_default).to eq("http://pokeapi.co/media/sprites/pokemon/12.png")
      expect(sprite.front_shiny).to eq("http://pokeapi.co/media/sprites/pokemon/shiny/12.png")
    end
  end
end
