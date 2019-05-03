RSpec.describe PokeApi::Pokemon::LocationAreaEncounter do
  describe '#initialize' do
    it 'creates a basic LocationAreaEncounter object from raw json data' do
      raw_data = {
        location_area: {
          name: "kanto-route-2-south-towards-viridian-city",
          url: "https://pokeapi.co/api/v2/location-area/296/"
        },
        version_details: [
          {
            max_chance: 10,
            encounter_details: [
              {
                min_level: 7,
                max_level: 7,
                condition_values: [
                  {
                    name: "time-morning",
                    url: "https://pokeapi.co/api/v2/encounter-condition-value/3/"
                  }
                ],
                chance: 5,
                method: {
                  name: "walk",
                  url: "https://pokeapi.co/api/v2/encounter-method/1/"
                }
              }
            ],
            version: {
              name: "heartgold",
              url: "https://pokeapi.co/api/v2/version/15/"
            }
          }
        ]
      }
      encounter = PokeApi::Pokemon::LocationAreaEncounter.new(raw_data)

      expect(encounter.class).to eq(PokeApi::Pokemon::LocationAreaEncounter)
      expect(encounter.location_area.class).to eq(PokeApi::LocationArea)
      expect(encounter.version_details.first.class).to eq(PokeApi::Common::VersionEncounterDetail)
    end
  end
end
