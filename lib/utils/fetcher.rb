# Simple object to handle all data fetching and parsing
class Fetcher
  class << self
    def call(endpoint, query = nil)
      ErrorHandling.undefined_endpoint(endpoint) unless ENDPOINT_OBJECTS[endpoint]

      path = "#{BASE_URI}#{endpoint.to_s.tr('_', '-')}/#{sanitize_query(query)}"
      call_uri(path).merge(resource_name: endpoint)
    end

    def call_uri(path)
      uri  = URI(path)
      resp = Net::HTTP.get(uri)
      JSON.parse(resp, symbolize_names: true).merge(url: path)
    end

    def sanitize_query(query)
      return query unless query.is_a? Hash

      query[:limit] ||= 20
      query[:offset] = query[:page] ? query[:limit] * (query[:page] - 1) : (query[:offset] || 0)
      query.reduce('?') do |result, param|
        key, value = param
        result + (key == :page ? '' : "#{key}=#{value}&")
      end.chop
    end
  end
end
