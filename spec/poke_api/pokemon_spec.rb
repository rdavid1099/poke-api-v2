require './spec/spec_helper'

RSpec.describe Pokemon, vcr: {cassette_name: 'pokemon_charizard_response'}  do
  def make_pokemon_http_request(query = 6)
    uri = URI("#{BASE_URI}#{ENDPOINTS[:pokemon]}#{query}")
    resp = Net::HTTP.get(uri)
    JSON.parse(resp)
  end

  before(:each) do
    allow(Fetcher).to receive(:call).and_return(make_pokemon_http_request)
  end


  describe '#random' do
    it 'pulls a random pokemon stats' do
      pokemon = Pokemon.random

      expect(pokemon.name).to eq("charizard")
    end
  end
end
