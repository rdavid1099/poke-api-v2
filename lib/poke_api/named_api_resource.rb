module PokeApi
  # Base class with shared methods for all Named API Resources
  class NamedApiResource
    include AssignmentHelpers

    attr_reader :id, :name, :url

    def get
      return if id

      data = Fetcher.call_uri(url)
      assign_data(data)
      self
    end

    private

    def assign_data(data)
      return unless data

      data.each_key do |key|
        data_chunk = data[key]
        if (klass = endpoint_assignment(key: key, custom_endpoint_object: custom_endpoint_object))
          assign_object(klass, data_chunk, key)
        else
          instance_variable_set("@#{key}", data_chunk)
        end
      end
    end

    def assign_object(klass, data, key)
      return unless data

      assignment = if data.is_a? Array
                     assign_list(klass: klass, data: data)
                   else
                     klass.new(data)
                   end
      instance_variable_set("@#{key}", assignment)
    end
  end
end
