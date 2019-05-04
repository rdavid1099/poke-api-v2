# Simple object to handle all data fetching and parsing
class Fetcher
  def self.call(endpoint, query = nil)
    path = "#{BASE_URI}#{ENDPOINTS[endpoint]}#{sanitize_query(query)}"
    call_uri(path).merge(resource_name: endpoint)
  end

  def self.call_uri(path)
    uri  = URI(path)
    resp = Net::HTTP.get(uri)
    JSON.parse(resp, symbolize_names: true).merge(url: path)
  end

  def self.sanitize_query(query)
    return query unless query.is_a? Hash

    query.reduce('?') { |result, param| result + "#{param[0]}=#{param[1]}&" }.chop
  end
end
