# Module handles all errors and messages to be raised by gem
module ErrorHandling
  def self.raise_too_many_args_error
    raise ArgumentError, 'Too many arguments given; search pokedex using either :id or :name'
  end
end
