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
    it 'stores url used in given object' do
      result = PokeApi.get(version: 'blue')
      expect(result.url).to eq('https://pokeapi.co/api/v2/version/blue')
    end

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
      it 'sets correct :move_learn_method value' do
        expect(ENDPOINTS[:move_learn_method]).to eq('move-learn-method/')
      end

      it 'sets correct :pokedex value' do
        expect(ENDPOINTS[:pokedex]).to eq('pokedex/')
      end

      it 'sets correct :pokemon value' do
        expect(ENDPOINTS[:pokemon]).to eq('pokemon/')
      end

      it 'sets correct :region value' do
        expect(ENDPOINTS[:region]).to eq('region/')
      end

      it 'sets correct :version value' do
        expect(ENDPOINTS[:version]).to eq('version/')
      end

      it 'sets correct :version_group value' do
        expect(ENDPOINTS[:version_group]).to eq('version-group/')
      end
    end

    context 'ENDPOINT_OBJECTS' do
      it 'sets correct :language value' do
        expect(ENDPOINT_OBJECTS[:language]).to eq(PokeApi::Utility::Language)
      end

      it 'sets correct :move_learn_method value' do
        expect(ENDPOINT_OBJECTS[:move_learn_method]).to eq(PokeApi::MoveLearnMethod)
      end

      it 'sets correct :names value' do
        expect(ENDPOINT_OBJECTS[:names]).to eq(PokeApi::Common::Name)
      end

      it 'sets correct :pokedex value' do
        expect(ENDPOINT_OBJECTS[:pokedex]).to eq(PokeApi::Pokedex)
      end

      it 'sets correct :pokemon_entries value' do
        expect(ENDPOINT_OBJECTS[:pokemon_entries]).to eq(PokeApi::Pokedex::PokemonEntry)
      end

      it 'sets correct :region value' do
        expect(ENDPOINT_OBJECTS[:region]).to eq(PokeApi::Region)
      end

      it 'sets correct :version value' do
        expect(ENDPOINT_OBJECTS[:version]).to eq(PokeApi::Version)
      end

      it 'sets correct :version_group value' do
        expect(ENDPOINT_OBJECTS[:version_group]).to eq(PokeApi::VersionGroup)
      end
    end
  end
end
