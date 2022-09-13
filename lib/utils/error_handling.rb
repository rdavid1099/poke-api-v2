# Module handles all errors and messages to be raised by gem
module ErrorHandling
  class << self
    def raise_too_many_args_error
      raise ArgumentError, 'Too many arguments given; search pokedex using either :id or :name'
    end

    def unnamed_resource_args
      msg = 'Too many arguments given; Only call get with a single symbol or a key-value pair'
      raise ArgumentError, msg
    end

    def undefined_endpoint(endpoint)
      msg = "Undefined endpoint; '#{endpoint}' not defined by https://pokeapi.co/"
      raise ArgumentError, msg
    end

    def results_not_found(endpoint, query)
      msg = "No results found for query '#{endpoint}: #{query}'"
      raise ResultsNotFound, msg
    end
  end
end

# Define custom error class for more descriptive exceptions
class ResultsNotFound < StandardError
end
