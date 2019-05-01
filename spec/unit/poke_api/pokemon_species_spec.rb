RSpec.describe PokeApi::PokemonSpecies, :vcr do
  describe '#initialize' do
    it 'creates a PokemonSpecies object from raw json data' do
      raw_data = Fetcher.call(:pokemon_species, 413)
      pokemon_species = PokeApi::PokemonSpecies.new(raw_data)

      expect(pokemon_species.class).to eq(PokeApi::PokemonSpecies)
      expect(pokemon_species.id).to eq(413)
      expect(pokemon_species.name).to eq('wormadam')
      expect(pokemon_species.names.first.class).to eq(PokeApi::Common::Name)
      expect(pokemon_species.order).to eq(441)
      expect(pokemon_species.gender_rate).to eq(8)
      expect(pokemon_species.capture_rate).to eq(45)
      expect(pokemon_species.base_happiness).to eq(70)
      expect(pokemon_species.is_baby).to eq(false)
      expect(pokemon_species.hatch_counter).to eq(15)
      expect(pokemon_species.has_gender_differences).to eq(false)
      expect(pokemon_species.forms_switchable).to eq(false)
      # expect(pokemon_species.growth_rate.class).to eq(PokeApi::GrowthRate)
      expect(pokemon_species.pokedex_numbers.first.class).to eq(PokeApi::PokemonSpecies::PokemonSpeciesDexEntry)
      # expect(pokemon_species.egg_groups.first.class).to eq(PokeApi::EggGroup)
      # expect(pokemon_species.color.class).to eq(PokeApi::PokemonColor)
      # expect(pokemon_species.shape.class).to eq(PokeApi::PokemonShape)
      expect(pokemon_species.evolves_from_species.class).to eq(PokeApi::PokemonSpecies)
      expect(pokemon_species.evolution_chain.class).to eq(PokeApi::EvolutionChain)
      # expect(pokemon_species.habitat.class).to eq(PokeApi::PokemonHabitat)
      expect(pokemon_species.generation.class).to eq(PokeApi::Generation)
      expect(pokemon_species.pal_park_encounters.first.class).to eq(PokeApi::PokemonSpecies::PalParkEncounterArea)
      expect(pokemon_species.flavor_text_entries.first.class).to eq(PokeApi::Common::FlavorText)
      expect(pokemon_species.form_descriptions.first.class).to eq(PokeApi::Common::Description)
      expect(pokemon_species.genera.first.class).to eq(PokeApi::PokemonSpecies::Genus)
      expect(pokemon_species.varieties.first.class).to eq(PokeApi::PokemonSpecies::PokemonSpeciesVariety)
    end
  end
end
