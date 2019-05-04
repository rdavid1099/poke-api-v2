RSpec.describe 'constants' do
  it 'sets correct BASE_URI value' do
    expect(BASE_URI).to eq("https://pokeapi.co/api/v2/")
  end

  it 'sets correct POKEMON_COUNT value' do
    expect(POKEMON_COUNT).to eq(751)
  end

  context 'ENDPOINT_OBJECTS' do
    it 'sets :ability correctly' do
      expect(ENDPOINT_OBJECTS[:ability]).to eq(PokeApi::Ability)
    end
    it 'sets :berry_firmness correctly' do
      expect(ENDPOINT_OBJECTS[:berry_firmness]).to eq(PokeApi::BerryFirmness)
    end
    it 'sets :berry_flavor correctly' do
      expect(ENDPOINT_OBJECTS[:berry_flavor]).to eq(PokeApi::BerryFlavor)
    end
    it 'sets :berry correctly' do
      expect(ENDPOINT_OBJECTS[:berry]).to eq(PokeApi::Berry)
    end
    it 'sets :characteristic correctly' do
      expect(ENDPOINT_OBJECTS[:characteristic]).to eq(PokeApi::Characteristic)
    end
    it 'sets :contest_effect correctly' do
      expect(ENDPOINT_OBJECTS[:contest_effect]).to eq(PokeApi::ContestEffect)
    end
    it 'sets :contest_type correctly' do
      expect(ENDPOINT_OBJECTS[:contest_type]).to eq(PokeApi::ContestType)
    end
    it 'sets :egg_group correctly' do
      expect(ENDPOINT_OBJECTS[:egg_group]).to eq(PokeApi::EggGroup)
    end
    it 'sets :encounter_condition_value correctly' do
      expect(ENDPOINT_OBJECTS[:encounter_condition_value]).to eq(PokeApi::EncounterConditionValue)
    end
    it 'sets :encounter_condition correctly' do
      expect(ENDPOINT_OBJECTS[:encounter_condition]).to eq(PokeApi::EncounterCondition)
    end
    it 'sets :encounter_method correctly' do
      expect(ENDPOINT_OBJECTS[:encounter_method]).to eq(PokeApi::EncounterMethod)
    end
    it 'sets :evolution_chain correctly' do
      expect(ENDPOINT_OBJECTS[:evolution_chain]).to eq(PokeApi::EvolutionChain)
    end
    it 'sets :evolution_trigger correctly' do
      expect(ENDPOINT_OBJECTS[:evolution_trigger]).to eq(PokeApi::EvolutionTrigger)
    end
    it 'sets :gender correctly' do
      expect(ENDPOINT_OBJECTS[:gender]).to eq(PokeApi::Gender)
    end
    it 'sets :generation correctly' do
      expect(ENDPOINT_OBJECTS[:generation]).to eq(PokeApi::Generation)
    end
    it 'sets :growth_rate correctly' do
      expect(ENDPOINT_OBJECTS[:growth_rate]).to eq(PokeApi::GrowthRate)
    end
    it 'sets :item_attribute correctly' do
      expect(ENDPOINT_OBJECTS[:item_attribute]).to eq(PokeApi::ItemAttribute)
    end
    it 'sets :item_category correctly' do
      expect(ENDPOINT_OBJECTS[:item_category]).to eq(PokeApi::ItemCategory)
    end
    it 'sets :item_fling_effect correctly' do
      expect(ENDPOINT_OBJECTS[:item_fling_effect]).to eq(PokeApi::ItemFlingEffect)
    end
    it 'sets :item_pocket correctly' do
      expect(ENDPOINT_OBJECTS[:item_pocket]).to eq(PokeApi::ItemPocket)
    end
    it 'sets :item correctly' do
      expect(ENDPOINT_OBJECTS[:item]).to eq(PokeApi::Item)
    end
    it 'sets :language correctly' do
      expect(ENDPOINT_OBJECTS[:language]).to eq(PokeApi::Utility::Language)
    end
    it 'sets :location_area correctly' do
      expect(ENDPOINT_OBJECTS[:location_area]).to eq(PokeApi::LocationArea)
    end
    it 'sets :location correctly' do
      expect(ENDPOINT_OBJECTS[:location]).to eq(PokeApi::Location)
    end
    it 'sets :machine correctly' do
      expect(ENDPOINT_OBJECTS[:machine]).to eq(PokeApi::Machine)
    end
    it 'sets :move_ailment correctly' do
      expect(ENDPOINT_OBJECTS[:move_ailment]).to eq(PokeApi::MoveAilment)
    end
    it 'sets :move_battle_style correctly' do
      expect(ENDPOINT_OBJECTS[:move_battle_style]).to eq(PokeApi::MoveBattleStyle)
    end
    it 'sets :move_category correctly' do
      expect(ENDPOINT_OBJECTS[:move_category]).to eq(PokeApi::MoveCategory)
    end
    it 'sets :move_damage_class correctly' do
      expect(ENDPOINT_OBJECTS[:move_damage_class]).to eq(PokeApi::MoveDamageClass)
    end
    it 'sets :move_learn_method correctly' do
      expect(ENDPOINT_OBJECTS[:move_learn_method]).to eq(PokeApi::MoveLearnMethod)
    end
    it 'sets :move_target correctly' do
      expect(ENDPOINT_OBJECTS[:move_target]).to eq(PokeApi::MoveTarget)
    end
    it 'sets :move correctly' do
      expect(ENDPOINT_OBJECTS[:move]).to eq(PokeApi::Move)
    end
    it 'sets :nature correctly' do
      expect(ENDPOINT_OBJECTS[:nature]).to eq(PokeApi::Nature)
    end
    it 'sets :pal_park_area correctly' do
      expect(ENDPOINT_OBJECTS[:pal_park_area]).to eq(PokeApi::PalParkArea)
    end
    it 'sets :pokeathlon_stat correctly' do
      expect(ENDPOINT_OBJECTS[:pokeathlon_stat]).to eq(PokeApi::PokeathlonStat)
    end
    it 'sets :pokedex correctly' do
      expect(ENDPOINT_OBJECTS[:pokedex]).to eq(PokeApi::Pokedex)
    end
    it 'sets :pokemon_color correctly' do
      expect(ENDPOINT_OBJECTS[:pokemon_color]).to eq(PokeApi::PokemonColor)
    end
    it 'sets :pokemon_form correctly' do
      expect(ENDPOINT_OBJECTS[:pokemon_form]).to eq(PokeApi::PokemonForm)
    end
    it 'sets :pokemon_habitat correctly' do
      expect(ENDPOINT_OBJECTS[:pokemon_habitat]).to eq(PokeApi::PokemonHabitat)
    end
    it 'sets :pokemon_shape correctly' do
      expect(ENDPOINT_OBJECTS[:pokemon_shape]).to eq(PokeApi::PokemonShape)
    end
    it 'sets :pokemon_species correctly' do
      expect(ENDPOINT_OBJECTS[:pokemon_species]).to eq(PokeApi::PokemonSpecies)
    end
    it 'sets :pokemon correctly' do
      expect(ENDPOINT_OBJECTS[:pokemon]).to eq(PokeApi::Pokemon)
    end
    it 'sets :region correctly' do
      expect(ENDPOINT_OBJECTS[:region]).to eq(PokeApi::Region)
    end
    it 'sets :stat correctly' do
      expect(ENDPOINT_OBJECTS[:stat]).to eq(PokeApi::Stat)
    end
    it 'sets :super_contest_effect correctly' do
      expect(ENDPOINT_OBJECTS[:super_contest_effect]).to eq(PokeApi::SuperContestEffect)
    end
    it 'sets :type correctly' do
      expect(ENDPOINT_OBJECTS[:type]).to eq(PokeApi::Type)
    end
    it 'sets :version_group correctly' do
      expect(ENDPOINT_OBJECTS[:version_group]).to eq(PokeApi::VersionGroup)
    end
    it 'sets :version correctly' do
      expect(ENDPOINT_OBJECTS[:version]).to eq(PokeApi::Version)
    end
  end

  context 'COMMON_MODELS' do
    it 'sets :description correctly' do
      expect(COMMON_MODELS[:description]).to eq(PokeApi::Common::Description)
    end
    it 'sets :effect correctly' do
      expect(COMMON_MODELS[:effect]).to eq(PokeApi::Common::Effect)
    end
    it 'sets :encounter correctly' do
      expect(COMMON_MODELS[:encounter]).to eq(PokeApi::Common::Encounter)
    end
    it 'sets :flavor_text correctly' do
      expect(COMMON_MODELS[:flavor_text]).to eq(PokeApi::Common::FlavorText)
    end
    it 'sets :generation_game_index correctly' do
      expect(COMMON_MODELS[:generation_game_index]).to eq(PokeApi::Common::GenerationGameIndex)
    end
    it 'sets :machine_version_detail correctly' do
      expect(COMMON_MODELS[:machine_version_detail]).to eq(PokeApi::Common::MachineVersionDetail)
    end
    it 'sets :names correctly' do
      expect(COMMON_MODELS[:names]).to eq(PokeApi::Common::Name)
    end
    it 'sets :verbose_effect correctly' do
      expect(COMMON_MODELS[:verbose_effect]).to eq(PokeApi::Common::VerboseEffect)
    end
    it 'sets :version_encounter_detail correctly' do
      expect(COMMON_MODELS[:version_encounter_detail]).to eq(PokeApi::Common::VersionEncounterDetail)
    end
    it 'sets :version_game_index correctly' do
      expect(COMMON_MODELS[:version_game_index]).to eq(PokeApi::Common::VersionGameIndex)
    end
    it 'sets :version_group_flavor_text correctly' do
      expect(COMMON_MODELS[:version_group_flavor_text]).to eq(PokeApi::Common::VersionGroupFlavorText)
    end
  end
end
