RSpec.describe PokeApi::Move::ContestComboSets do
  describe '#initialize' do
    it 'creates a basic PokemonEntry object from raw json data' do
      raw_data = {
        normal: {
          use_before: [
            {
              name: "double-slap",
              url: "https://pokeapi.co/api/v2/move/3/"
            }
          ],
          use_after: [
            {
              name: "headbutt",
              url: "https://pokeapi.co/api/v2/move/29/"
            }
          ]
        },
        super: {
          use_before: nil,
          use_after: [
            {
              name: "feint-attack",
              url: "https://pokeapi.co/api/v2/move/185/"
            }
          ]
        }
      }
      ccs = PokeApi::Move::ContestComboSets.new(raw_data)

      expect(ccs.class).to eq(PokeApi::Move::ContestComboSets)
      expect(ccs.normal.class).to eq(PokeApi::Move::ContestComboDetail)
      expect(ccs.normal.use_before.first.class).to eq(PokeApi::Move)
      expect(ccs.super.class).to eq(PokeApi::Move::ContestComboDetail)
      expect(ccs.super.use_before).to eq(nil)
    end
  end
end
