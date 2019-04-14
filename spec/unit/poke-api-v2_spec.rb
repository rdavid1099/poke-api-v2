RSpec.describe PokeApi, :vcr  do
  describe 'version' do
    it 'should be the correct number' do
      expect(PokeApi::VERSION).to eq('0.1.0')
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
      it 'sets correct :berry_firmness value' do
        expect(ENDPOINTS[:berry_firmness]).to eq('berry-firmness/')
      end

      it 'sets correct :berry value' do
        expect(ENDPOINTS[:berry]).to eq('berry/')
      end

      it 'sets correct :encounter_condition_value value' do
        expect(ENDPOINTS[:encounter_condition_value]).to eq('encounter-condition-value/')
      end

      it 'sets correct :encounter_condition value' do
        expect(ENDPOINTS[:encounter_condition]).to eq('encounter-condition/')
      end

      it 'sets correct :encounter_method value' do
        expect(ENDPOINTS[:encounter_method]).to eq('encounter-method/')
      end

      it 'sets correct :item value' do
        expect(ENDPOINTS[:item]).to eq('item/')
      end

      it 'sets correct :location_area value' do
        expect(ENDPOINTS[:location_area]).to eq('location-area/')
      end

      it 'sets correct :location value' do
        expect(ENDPOINTS[:location]).to eq('location/')
      end

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

      it 'sets correct :type value' do
        expect(ENDPOINTS[:type]).to eq('type/')
      end

      it 'sets correct :version value' do
        expect(ENDPOINTS[:version]).to eq('version/')
      end

      it 'sets correct :version_group value' do
        expect(ENDPOINTS[:version_group]).to eq('version-group/')
      end
    end

    context 'ENDPOINT_OBJECTS' do
      it 'sets correct :berry value' do
        expect(ENDPOINT_OBJECTS[:berry]).to eq(PokeApi::Berry)
      end

      it 'sets correct :condition value' do
        expect(ENDPOINT_OBJECTS[:condition]).to eq(PokeApi::EncounterCondition)
      end

      it 'sets correct :damage_relations value' do
        expect(ENDPOINT_OBJECTS[:damage_relations]).to eq(PokeApi::Type::TypeRelations)
      end

      it 'sets correct :descriptions value' do
        expect(ENDPOINT_OBJECTS[:descriptions]).to eq(PokeApi::Common::Description)
      end

      it 'sets correct :effect_entries value' do
        expect(ENDPOINT_OBJECTS[:effect_entries]).to eq(PokeApi::Common::VerboseEffect)
      end

      it 'sets correct :encounter_details value' do
        expect(ENDPOINT_OBJECTS[:encounter_details]).to eq(PokeApi::Common::Encounter)
      end

      it 'sets correct :encounter_method value' do
        expect(ENDPOINT_OBJECTS[:encounter_method]).to eq(PokeApi::EncounterMethod)
      end

      it 'sets correct :encounter_method_rate value' do
        expect(ENDPOINT_OBJECTS[:encounter_method_rate]).to eq(PokeApi::LocationArea::EncounterMethodRate)
      end

      it 'sets correct :item value' do
        expect(ENDPOINT_OBJECTS[:item]).to eq(PokeApi::Item)
      end

      it 'sets correct :firmness value' do
        expect(ENDPOINT_OBJECTS[:firmness]).to eq(PokeApi::BerryFirmness)
      end

      it 'sets correct :flavor value' do
        expect(ENDPOINT_OBJECTS[:flavor]).to eq(PokeApi::Berry::BerryFlavorMap)
      end

      it 'sets correct :game_index value' do
        expect(ENDPOINT_OBJECTS[:game_indices]).to eq(PokeApi::Common::GenerationGameIndex)
      end

      it 'sets correct :held_by_pokemon value' do
        expect(ENDPOINT_OBJECTS[:held_by_pokemon]).to eq(PokeApi::Item::ItemHolderPokemon)
      end

      it 'sets correct :language value' do
        expect(ENDPOINT_OBJECTS[:language]).to eq(PokeApi::Utility::Language)
      end

      it 'sets correct :location_area value' do
        expect(ENDPOINT_OBJECTS[:location_area]).to eq(PokeApi::LocationArea)
      end

      it 'sets correct :location value' do
        expect(ENDPOINT_OBJECTS[:location]).to eq(PokeApi::Location)
      end

      it 'sets correct :move_learn_method value' do
        expect(ENDPOINT_OBJECTS[:move_learn_method]).to eq(PokeApi::MoveLearnMethod)
      end

      it 'sets correct :names value' do
        expect(ENDPOINT_OBJECTS[:names]).to eq(PokeApi::Common::Name)
      end

      it 'sets correct :natural_gift_type value' do
        expect(ENDPOINT_OBJECTS[:natural_gift_type]).to eq(PokeApi::Type)
      end

      it 'sets correct :pokedex value' do
        expect(ENDPOINT_OBJECTS[:pokedex]).to eq(PokeApi::Pokedex)
      end

      it 'sets correct :pokemon_encounter value' do
        expect(ENDPOINT_OBJECTS[:pokemon_encounter]).to eq(PokeApi::LocationArea::PokemonEncounter)
      end

      it 'sets correct :pokemon_entries value' do
        expect(ENDPOINT_OBJECTS[:pokemon_entries]).to eq(PokeApi::Pokedex::PokemonEntry)
      end

      it 'sets correct :pokemon value' do
        expect(ENDPOINT_OBJECTS[:pokemon]).to eq(PokeApi::Pokemon)
      end

      it 'sets correct :region value' do
        expect(ENDPOINT_OBJECTS[:region]).to eq(PokeApi::Region)
      end

      it 'sets correct :values value' do
        expect(ENDPOINT_OBJECTS[:values]).to eq(PokeApi::EncounterConditionValue)
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
