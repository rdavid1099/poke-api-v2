RSpec.describe PokeApi::PalParkArea, :vcr do
  describe '#initialize' do
    it 'creates a PalParkArea object from raw json data' do
      raw_data = Fetcher.call(:pal_park_area, 1)
      pal_park_area = PokeApi::PalParkArea.new(raw_data)

      expect(pal_park_area.class).to eq(PokeApi::PalParkArea)
      expect(pal_park_area.id).to eq(1)
      expect(pal_park_area.name).to eq('forest')
      expect(pal_park_area.names.first.class).to eq(PokeApi::Common::Name)
      expect(pal_park_area.pokemon_encounters.first.class).to eq(PokeApi::PalParkArea::PalParkEncounterSpecies)
    end
  end
end
