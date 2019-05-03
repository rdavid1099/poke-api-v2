RSpec.describe PokeApi::PokemonForm, :vcr do
  describe '#initialize' do
    it 'creates a PokemonForm object from raw json data' do
      raw_data = Fetcher.call(:pokemon_form, 413)
      pokemon_form = PokeApi::PokemonForm.new(raw_data)

      expect(pokemon_form.class).to eq(PokeApi::PokemonForm)
      expect(pokemon_form.id).to eq(413)
      expect(pokemon_form.name).to eq('wormadam-plant')
      expect(pokemon_form.order).to eq(503)
      expect(pokemon_form._order).to eq(1)
      expect(pokemon_form.is_default).to eq(true)
      expect(pokemon_form.is_battle_only).to eq(false)
      expect(pokemon_form.is_mega).to eq(false)
      expect(pokemon_form._name).to eq("plant")
      expect(pokemon_form.pokemon.class).to eq(PokeApi::Pokemon)
      expect(pokemon_form.sprites.class).to eq(PokeApi::PokemonForm::PokemonFormSprites)
      expect(pokemon_form.version_group).to eq(PokeApi::VersionGroup)
      expect(pokemon_form.names.first.class).to eq(PokeApi::Common::Name)
      expect(pokemon_form.form_names.first.class).to eq(PokeApi::Common::Name)
    end
  end
end
