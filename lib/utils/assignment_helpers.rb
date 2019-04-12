# Module housing simple assignment methods/ patterns
module AssignmentHelpers
  module_function

  def assign_list(data:, klass:)
    return unless data

    data.map do |raw|
      klass.new(raw)
    end
  end

  def endpoint_assignment(key:, custom_endpoint_object: {})
    custom_endpoint_object[key] || ENDPOINT_OBJECTS[key] || ENDPOINT_OBJECTS[key.singularize]
  end
end
