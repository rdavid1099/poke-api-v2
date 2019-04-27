RSpec.describe PokeApi::Characteristic, :vcr do
  describe '#initialize' do
    it 'creates a Characteristic object from raw json data' do
      raw_data = Fetcher.call(:characteristic, 1)
      characteristic = PokeApi::Characteristic.new(raw_data)

      expect(characteristic.class).to eq(PokeApi::Characteristic)
      expect(characteristic.id).to eq(1)
      expect(characteristic.gene_modulo).to eq(0)
      expect(characteristic.possible_values.first).to eq(0)
      expect(characteristic.highest_stat.class).to eq(PokeApi::Stat)
      expect(characteristic.descriptions.first.class).to eq(PokeApi::Common::Description)
    end
  end
end
