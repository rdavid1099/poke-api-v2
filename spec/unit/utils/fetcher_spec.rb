RSpec.describe Fetcher, :vcr  do
  describe '#call' do
    it 'makes api call using given params and returns parsed json' do
      result = Fetcher.call(:pokemon, 'pikachu')

      expect(result.class).to eq(Hash)
      expect(result[:name]).to eq('pikachu')
    end
  end
end
