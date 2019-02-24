require './spec/spec_helper'

RSpec.describe "Pokemon", :vcr do
  def make_pokemon_http_request(query = 6)
    uri = URI("#{BASE_URI}#{ENDPOINTS[:pokemon]}#{query}")
    resp = Net::HTTP.get(uri)
  end

  describe '#random' do
    it 'pulls a random pokemon stats' do
      resp = make_pokemon_http_request
      binding.pry
    end
  end
end
