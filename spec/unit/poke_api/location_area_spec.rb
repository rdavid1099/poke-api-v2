include ApiHelperMethods

RSpec.describe PokeApi::LocationArea, :vcr do
  describe '#initialize' do
    it 'creates a LocationArea object from raw json data' do
      raw_data = make_http_request(:location_area, 1)
      location_area = PokeApi::LocationArea.new(raw_data)

      expect(location_area.class).to eq(PokeApi::LocationArea)
      expect(location_area.id).to eq(1)
      expect(location_area.encounter_method_rates.first.class).to eq(PokeApi::LocationArea::EncounterMethodRate)
      expect(location_area.game_index).to eq(1)
      expect(location_area.location.class).to eq(PokeApi::Location)
      expect(location_area.name).to eq('canalave-city-area')
      expect(location_area.names.first.class).to eq(PokeApi::Common::Name)
      expect(location_area.pokemon_encounters.first.class).to eq(PokeApi::Common::PokemonEncounter)
    end
  end
end
