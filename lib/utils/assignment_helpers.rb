# Module housing simple assignment methods/ patterns
module AssignmentHelpers
  module_function

  def assign_list(data:, klass: nil)
    return unless data

    data.map do |raw|
      klass ||= get_named_api_resource_from_url(raw[:url])
      klass.new(raw)
    end
  end

  def endpoint_assignment(key:, custom_endpoint_object: {})
    singular_key = key.singularize
    custom_endpoint_object[key] ||
      ENDPOINT_OBJECTS[key] || ENDPOINT_OBJECTS[singular_key] ||
      COMMON_MODELS[key] || COMMON_MODELS[singular_key]
  end

  def custom_endpoint_object
    {}
  end

  def try_to_assign(data:, klass: nil)
    return unless data

    klass ||= get_named_api_resource_from_url(data[:url])
    klass.new(data)
  end

  def get_named_api_resource_from_url(url)
    key = url.split('/api/v2/').last.split('/').first.tr('-', '_').to_sym
    ENDPOINT_OBJECTS[key]
  end
end
