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
    @abilities = data['abilities']
    @base_experience = data['base_experience']
    @forms = data['forms']
    @game_indices = data['game_indices']
    @height = data['height']
    @held_items = data['held_items']
    @id = data['id']
    @is_default = data['is_default']
    @location_area_encounters = data['location_area_encounters']
    @moves = data['moves']
    @name = data['name']
    @order = data['order']
    @species = data['species']
    @sprites = data['sprites']
    @stats = data['stats']
    @types = data['types']
    @weight = data['weight']
  end
end
