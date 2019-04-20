RSpec.describe PokeApi::EvolutionChain, :vcr do
  describe '#initialize' do
    it 'creates a EvolutionChain object from raw json data' do
      raw_data = Fetcher.call(:evolution_chain, 100)
      ec = PokeApi::EvolutionChain.new(raw_data)

      expect(ec.class).to eq(PokeApi::EvolutionChain)
      expect(ec.id).to eq(100)
      expect(ec.baby_trigger_item.class).to eq(PokeApi::Item)
      expect(ec.chain.class).to eq(PokeApi::EvolutionChain::ChainLink)
    end
  end
end
