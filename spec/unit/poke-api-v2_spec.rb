RSpec.describe PokeApi, :vcr  do
  describe 'version' do
    it 'should be the correct number' do
      expect(PokeApi::VERSION).to eq('0.1.0')
    end
  end

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

    it 'raises an exception if both id and name are given' do
      error_msg = 'Too many arguments given; search pokedex using either :id or :name'
      expect{ PokeApi.pokedex(id: 1, name: 'charizard') }.to raise_error(ArgumentError, error_msg)
    end
  end

  describe '#get' do
    context 'version' do
      it 'gets version using id' do
        result = PokeApi.get(version: 1)
        expect(result.class).to eq(PokeApi::Version)
      end
    end
  end

  describe 'constants' do
    it 'sets correct BASE_URI value' do
      expect(BASE_URI).to eq("https://pokeapi.co/api/v2/")
    end

    it 'sets correct POKEMON_COUNT value' do
      expect(POKEMON_COUNT).to eq(751)
    end

    context 'ENDPOINTS' do
      it 'sets correct :pokemon value' do
        expect(ENDPOINTS[:pokemon]).to eq('pokemon/')
      end

      it 'sets correct :version value' do
        expect(ENDPOINTS[:version]).to eq('version/')
      end
    end

    context 'ENDPOINT_OBJECTS' do
      it 'sets correct :version value' do
        expect(ENDPOINT_OBJECTS[:version]).to eq(PokeApi::Version)
      end
    end
  end
end
