module PokeApi
  # Base class handling all unnamed resource calls
  class ApiResourceList
    include AssignmentHelpers

    attr_reader :count,
                :next_url,
                :previous_url,
                :results

    def initialize(data)
      @count = data[:count]
      @next_url = data[:next]
      @previous_url = data[:previous]
      @results = assign_list(
        data: data[:results],
        klass: ENDPOINT_OBJECTS[data[:resource_name]]
      )
    end
  end
end
