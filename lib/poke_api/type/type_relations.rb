module PokeApi
  class Type
    # TypeRelations object handling lists of type relationships
    class TypeRelations
      include AssignmentHelpers

      attr_reader :no_damage_to,
                  :half_damage_to,
                  :double_damage_to,
                  :no_damage_from,
                  :half_damage_from,
                  :double_damage_from

      def initialize(data)
        data.each_key do |key|
          instance_variable_set("@#{key}", assign_list(data: data[key], klass: Type))
        end
      end
    end
  end
end
