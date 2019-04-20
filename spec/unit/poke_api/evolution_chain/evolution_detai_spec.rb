RSpec.describe PokeApi::EvolutionChain::EvolutionDetail do
  describe '#initialize' do
    it 'creates a basic EvolutionDetail object from raw json data' do
      raw_data = {
        item: nil,
        trigger: {
          name: 'level-up',
          url: 'https://pokeapi.co/api/v2/evolution-trigger/1/'
        },
        gender: nil,
        held_item: {
          name: 'berry',
          url: 'https://pokeapi.co/api/v2/item/1/'
        },
        known_move: {
          name: 'scratch',
          url: 'https://pokeapi.co/api/v2/move/1/'
        },
        known_move_type: {
          name: 'type',
          url: 'https://pokeapi.co/api/v2/type/1/'
        },
        location: {
          name: 'location',
          url: 'https://pokeapi.co/api/v2/location/1/'
        },
        min_level: 20,
        min_happiness: nil,
        min_beauty: nil,
        min_affection: nil,
        needs_overworld_rain: false,
        party_species: {
          name: 'pokemon-species',
          url: 'https://pokeapi.co/api/v2/pokemon-species/1/'
        },
        party_type: nil,
        relative_physical_stats: nil,
        time_of_day: '',
        trade_species: nil,
        turn_upside_down: false
      }
      evolution_detail = PokeApi::EvolutionChain::EvolutionDetail.new(raw_data)

      expect(evolution_detail.item).to eq(nil)
      # expect(evolution_detail.trigger).to eq(PokeApi::EvolutionTrigger)
      expect(evolution_detail.gender).to eq(nil)
      expect(evolution_detail.held_item.class).to eq(PokeApi::Item)
      # expect(evolution_detail.known_move.class).to eq(PokeApi::Move)
      expect(evolution_detail.known_move_type.class).to eq(PokeApi::Type)
      expect(evolution_detail.location.class).to eq(PokeApi::Location)
      expect(evolution_detail.min_level).to eq(20)
      expect(evolution_detail.min_happiness).to eq(nil)
      expect(evolution_detail.min_beauty).to eq(nil)
      expect(evolution_detail.min_affection).to eq(nil)
      expect(evolution_detail.needs_overworld_rain).to eq(false)
      # expect(evolution_detail.party_species.class).to eq(PokeApi::PokemonSpecies)
      expect(evolution_detail.party_type).to eq(nil)
      expect(evolution_detail.relative_physical_stats).to eq(nil)
      expect(evolution_detail.time_of_day).to eq('')
      expect(evolution_detail.trade_species).to eq(nil)
      expect(evolution_detail.turn_upside_down).to eq(false)
    end
  end
end
