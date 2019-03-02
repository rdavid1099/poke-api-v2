class Fetcher
  def self.call(endpoint, query)
    uri = URI("#{BASE_URI}#{ENDPOINTS[endpoint]}#{query}")
    resp = Net::HTTP.get(uri)
    JSON.parse(resp, symbolize_names: true)
  end
end
