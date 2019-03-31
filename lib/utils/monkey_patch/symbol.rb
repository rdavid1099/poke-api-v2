# Monkey patch Symbol class for specific key matching methods
class Symbol
  SPECIAL_SIGNULAR = {
    areas: :location_area,
    pokedexes: :pokedex
  }.freeze

  def singularize
    SPECIAL_SIGNULAR[self] || to_s.chop.to_sym
  end
end
