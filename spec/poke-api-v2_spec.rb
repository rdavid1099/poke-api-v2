require './spec/spec_helper'
include ApiHelperMethods

RSpec.describe PokeApi, :vcr  do
  describe '#pokedex' do
    it 'fetches using given id' do
      result = PokeApi.pokedex(id: 1)

      expect(result.name).to eq('bulbasaur')
      expect(result.id).to eq(1)
    end

    it 'fetches using given name' do
      result = PokeApi.pokedex(id: 'blastoise')

      expect(result.name).to eq('blastoise')
      expect(result.id).to eq(9)
    end
  end
end
