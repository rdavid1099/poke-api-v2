# Monkey patch Symbol class for specific key matching methods
class Symbol
  def singularize
    to_s.chop.to_sym
  end
end
