module ErrorHandling
  def self.raise_too_many_args_error
    raise ArgumentError, 'Too many arguments given; search pokedex using either :id or :name'
  end
end
