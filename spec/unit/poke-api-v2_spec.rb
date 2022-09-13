RSpec.describe PokeApi, :vcr  do
  describe 'version' do
    it 'should be the correct number' do
      expect(PokeApi::VERSION).to eq('0.1.1')
    end
  end

  describe '#pokedex' do
    it 'fetches using given id' do
      result = PokeApi.pokedex(1)

      expect(result.name).to eq('bulbasaur')
      expect(result.id).to eq(1)
    end

    it 'fetches using given name' do
      result = PokeApi.pokedex('blastoise')

      expect(result.name).to eq('blastoise')
      expect(result.id).to eq(9)
    end
  end

  describe '#get' do
    it 'stores url used in given object' do
      result = PokeApi.get(version: 'blue')
      expect(result.url).to eq('https://pokeapi.co/api/v2/version/blue')
    end

    it 'gets version using id' do
      result = PokeApi.get(version: 1)
      expect(result.class).to eq(PokeApi::Version)
    end

    it 'raises an exception if endpoint does not exist' do
      error_msg = "Undefined endpoint; 'wrong_endpoint' not defined by https://pokeapi.co/"
      expect{ PokeApi.get(:wrong_endpoint) }.to raise_error(ArgumentError, error_msg)
    end

    it 'returns nil if query is not found' do
      result = PokeApi.get(version: 999999)
      expect(result).to eq(nil)
    end

    context 'calls unnamed resource list' do
      it 'using endpoint symbol' do
        result = PokeApi.get(:ability)
        expect(result.class).to eq(PokeApi::ApiResourceList)
        expect(result.count).to eq(293)
        expect(result.results.count).to eq(20)
      end

      it 'using symbol with declared limit and offset' do
        result = PokeApi.get(ability: {limit: 10, offset: 10})
        expect(result.class).to eq(PokeApi::ApiResourceList)
        expect(result.count).to eq(293)
        expect(result.results.count).to eq(10)
        expect(result.next_url).to eq('https://pokeapi.co/api/v2/ability/?offset=20&limit=10')
        expect(result.previous_url).to eq('https://pokeapi.co/api/v2/ability/?offset=0&limit=10')
      end

      it 'using symbol with declared limit and page' do
        result = PokeApi.get(ability: {limit: 50, page: 3})
        expect(result.class).to eq(PokeApi::ApiResourceList)
        expect(result.results.count).to eq(50)
        expect(result.next_url).to eq('https://pokeapi.co/api/v2/ability/?offset=150&limit=50')
        expect(result.previous_url).to eq('https://pokeapi.co/api/v2/ability/?offset=50&limit=50')
      end

      it 'raises an exception if endpoint symbol and params used' do
        error_msg = "Too many arguments given; Only call get with a single symbol or a key-value pair"
        expect{ PokeApi.get(:pokemon, ability: {limit: 50, page: 3}) }.to raise_error(ArgumentError, error_msg)
      end
    end
  end

  describe '#get!' do
    it 'returns object if query is found' do
      result = PokeApi.get!(pokemon: 'golem')
      expect(result.class).to eq(PokeApi::Pokemon)
    end

    it 'raises an exception if query does not return anything' do
      error_msg = "No results found for query 'version: 999999'"
      expect{ PokeApi.get!(version: 999999) }.to raise_error(ResultsNotFound, error_msg)
    end
  end
end
