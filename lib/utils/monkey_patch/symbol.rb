# Monkey patch Symbol class for specific key matching methods
class Symbol
  SPECIAL_SINGULAR = {
    abilities: :ability,
    areas: :location_area,
    berries: :berry,
    pokedexes: :pokedex
  }.freeze

  def singularize
    SPECIAL_SINGULAR[self] || to_s.chop.to_sym
  end
end
