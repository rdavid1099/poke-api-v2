RSpec.describe PokeApi::Gender, :vcr do
  describe '#initialize' do
    it 'creates a Gender object from raw json data' do
      raw_data = Fetcher.call(:gender, 1)
      gender = PokeApi::Gender.new(raw_data)

      expect(gender.class).to eq(PokeApi::Gender)
      expect(gender.id).to eq(1)
      expect(gender.name).to eq('female')
    end
  end
end
