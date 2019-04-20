RSpec.describe PokeApi::EvolutionChain::ChainLink do
  describe '#initialize' do
    it 'creates a basic ChainLink object from raw json data' do
      raw_data = {
        is_baby: false,
        species: {
          name: 'rattata',
          url: 'https://pokeapi.co/api/v2/pokemon-species/19/'
        },
        evolution_details: nil,
        evolves_to: [
          {
            is_baby: false,
            species: {
              name: 'raticate',
              url: 'https://pokeapi.co/api/v2/pokemon-species/20/'
            },
            evolution_details: [
              {
                item: nil,
                trigger: {
                  name: 'level-up',
                  url: 'https://pokeapi.co/api/v2/evolution-trigger/1/'
                },
                gender: nil,
                held_item: nil,
                known_move: nil,
                known_move_type: nil,
                location: nil,
                min_level: 20,
                min_happiness: nil,
                min_beauty: nil,
                min_affection: nil,
                needs_overworld_rain: false,
                party_species: nil,
                party_type: nil,
                relative_physical_stats: nil,
                time_of_day: '',
                trade_species: nil,
                turn_upside_down: false
              }
            ],
            evolves_to: []
          }
        ]
      }
      link = PokeApi::EvolutionChain::ChainLink.new(raw_data)

      expect(link.class).to eq(PokeApi::EvolutionChain::ChainLink)
      expect(link.is_baby).to eq(false)
      # expect(link.species.class).to eq(PokeApi::PokemonSpecies)
      expect(link.evolution_details.first).to eq(nil)
      # expect(link.evolves_to.first.class).to eq(PokeApi::EvolutionChain::ChainLink)
      # expect(link.evolves_to.first.evolution_details.first.class).to eq(PokeApi::EvolutionChain::EvolutionDetail)
    end
  end
end
