module PokeApi
  # Base class with shared methods for all Named API Resources
  class NamedApiResource
    def get
      return if id

      data = Fetcher.call_uri(url)
      assign_data(data)
    end

    def assign_data(data)
      data.keys.each do |key|
        if (klass = ENDPOINT_OBJECTS[key] || ENDPOINT_OBJECTS[key.singularize])
          assign_object(klass, data[key], key)
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
