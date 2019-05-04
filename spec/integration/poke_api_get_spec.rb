RSpec.describe 'e2e testing PokeApi functionality', :vcr  do
  context 'chaining calls together' do
    it 'fetches an incomplete object with #get' do
      pikachu = PokeApi.get(pokemon: 'pikachu')
      expect(pikachu.forms.first.id).to eq(nil)
      pikachu.forms.first.get
      expect(pikachu.forms.first.id).to eq(25)
    end

    it 'returns completed object with #get' do
      oddish = PokeApi.get(pokemon: 'oddish')
      species = oddish.species.get.evolution_chain.get.chain.evolves_to.first.species.get

      expect(species.id).to eq(44)
      expect(species.name).to eq('gloom')
      expect(oddish.species.evolution_chain.id).to eq(18)
    end

    it 'collects data from unnamed list with #get' do
      pokemon = PokeApi.get(pokemon: {limit: 5})
      bulbasaur = pokemon.results.first.get

      expect(bulbasaur.class).to eq(PokeApi::Pokemon)
      expect(bulbasaur.id).to eq(1)
      expect(bulbasaur.abilities.first.ability.name).to eq('chlorophyll')
    end
  end
end
