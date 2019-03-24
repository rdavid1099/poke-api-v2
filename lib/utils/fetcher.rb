# Simple object to handle all data fetching and parsing
class Fetcher
  def self.call(endpoint, query)
    path = "#{BASE_URI}#{ENDPOINTS[endpoint]}#{query}"
    call_uri(path)
  end

  def self.call_uri(path)
    uri  = URI(path)
    resp = Net::HTTP.get(uri)
    JSON.parse(resp, symbolize_names: true).merge(url: path)
  end
end
