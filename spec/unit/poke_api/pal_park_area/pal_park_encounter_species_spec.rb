RSpec.describe PokeApi::PalParkArea::PalParkEncounterSpecies do
  describe '#initialize' do
    it 'creates a basic PalParkEncounterSpecies object from raw json data' do
      raw_data = {
        base_score: 30,
        rate: 50,
        pokemon_species: {
          name: "caterpie",
          url: "https://pokeapi.co/api/v2/pokemon-species/10/"
        }
      }
      ppes = PokeApi::PalParkArea::PalParkEncounterSpecies.new(raw_data)

      expect(ppes.class).to eq(PokeApi::PalParkArea::PalParkEncounterSpecies)
      expect(ppes.base_score).to eq(30)
      expect(ppes.rate).to eq(50)
      expect(ppes.pokemon_species.class).to eq(PokeApi::PokemonSpecies)
    end
  end
end
