RSpec.describe PokeApi::PokemonSpecies::PalParkEncounterArea do
  describe '#initialize' do
    it 'creates a basic PalParkEncounterArea object from raw json data' do
      raw_data = {
        base_score: 10,
        rate: 45,
        area: {
          name: "forest",
          url: "https://pokeapi.co/api/v2/pal-park-area/1/"
        }
      }
      pokemon_entry = PokeApi::PokemonSpecies::PalParkEncounterArea.new(raw_data)

      expect(pokemon_entry.class).to eq(PokeApi::PokemonSpecies::PalParkEncounterArea)
      expect(pokemon_entry.base_score).to eq(10)
      expect(pokemon_entry.rate).to eq(45)
      # expect(pokemon_entry.area.class).to eq(PokeApi::PalParkArea)
    end
  end
end
