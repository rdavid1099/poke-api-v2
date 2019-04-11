RSpec.describe PokeApi::Berry, :vcr do
  describe '#initialize' do
    it 'creates a Berry object from raw json data' do
      raw_data = Fetcher.call(:berry, 1)
      berry = PokeApi::Berry.new(raw_data)

      expect(berry.class).to eq(PokeApi::Berry)
      expect(berry.id).to eq(1)
      expect(berry.name).to eq('cheri')
      expect(berry.growth_time).to eq(3)
      expect(berry.max_harvest).to eq(5)
      expect(berry.natural_gift_power).to eq(60)
      expect(berry.size).to eq(20)
      expect(berry.smoothness).to eq(25)
      expect(berry.soil_dryness).to eq(15)
      # expect(berry.firmness.class).to eq(PokeApi::BerryFirmness)
      expect(berry.flavors.first.class).to eq(PokeApi::Berry::BerryFlavorMap)
      # expect(berry.item.class).to eq(PokeApi::Item)
      expect(berry.natural_gift_type.class).to eq(PokeApi::Type)
    end
  end
end
