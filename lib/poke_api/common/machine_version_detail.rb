module PokeApi
  module Common
    # MachineVersionDetail object handling lists of machine and version_group
    class MachineVersionDetail
      attr_reader :machine,
                  :version_group

      def initialize(data)
        @machine = Machine.new(data[:machine])
        @version_group = VersionGroup.new(data[:version_group])
      end
    end
  end
end
