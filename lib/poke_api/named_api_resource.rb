module PokeApi
  # Base class with shared methods for all Named API Resources
  class NamedApiResource
    def get
      data = Fetcher.call_uri(url)
      assign_data(data)
    end

    def sanitize_names_list(raw_names)
      return unless raw_names.class == Array

      raw_names.map { |raw_name| Common::Name.new(raw_name) }
    end

    def assign_data(data)
      data.keys.each do |key|
        if ENDPOINT_OBJECTS.key?(key)
          assign_object(ENDPOINT_OBJECTS[key], data[key], key)
        else
          instance_variable_set("@#{key}", data[key])
        end
      end
    end

    def assign_object(klass, data, key)
      assignment = if data.class == Array
                     assign_list_of_objects(klass, data)
                   else
                     klass.new(data)
                   end
      instance_variable_set("@#{key}", assignment)
    end

    def assign_list_of_objects(klass, data)
      data.map { |iterator| klass.new(iterator) }
    end
  end
end
