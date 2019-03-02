# Simple object to handle all data fetching and parsing
class Fetcher
  def self.call(endpoint, query)
    uri = URI("#{BASE_URI}#{ENDPOINTS[endpoint]}#{query}")
    resp = Net::HTTP.get(uri)
    JSON.parse(resp, symbolize_names: true)
  end
end
