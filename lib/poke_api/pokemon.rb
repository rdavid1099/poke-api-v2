# Pokemon object handling all data fetched from /pokemon
class Pokemon
  attr_reader :abilities,
              :base_experience,
              :forms,
              :game_indices,
              :height,
              :held_items,
              :id,
              :is_default,
              :location_area_encounters,
              :moves,
              :name,
              :order,
              :species,
              :sprites,
              :stats,
              :types,
              :weight

  def initialize(data)
    @base_experience = data[:base_experience]
    @height = data[:height]
    @id = data[:id]
    @is_default = data[:is_default]
    @name = data[:name]
    @order = data[:order]
    @weight = data[:weight]
  end
end
