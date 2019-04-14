RSpec.describe PokeApi::Common::MachineVersionDetail do
  describe '#initialize' do
    it 'creates a basic MachineVersionDetail object from raw json data' do
      raw_data = {
        machine: {
          url: 'https://pokeapi.co/api/v2/machine/1334/'
        },
        version_group: {
          name: 'ultra-sun-ultra-moon',
          url: 'https://pokeapi.co/api/v2/version-group/18/'
        }
      }
      mvd = PokeApi::Common::MachineVersionDetail.new(raw_data)

      expect(mvd.class).to eq(PokeApi::Common::MachineVersionDetail)
      # expect(mvd.machine.class).to eq(PokeApi::Machine)
      expect(mvd.version_group.class).to eq(PokeApi::VersionGroup)
    end
  end
end
