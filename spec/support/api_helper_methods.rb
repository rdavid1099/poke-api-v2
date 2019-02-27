module ApiHelperMethods
  def make_pokemon_http_request(query = 6)
    uri = URI("#{BASE_URI}#{ENDPOINTS[:pokemon]}#{query}")
    resp = Net::HTTP.get(uri)
    JSON.parse(resp)
  end
end
