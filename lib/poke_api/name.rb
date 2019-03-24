module PokeApi
  # Name object handling lists of names and languages
  class Name
    attr_reader :name,
                :language

    def initialize(data)
      @name     = data[:name]
      @language = data[:language]
    end
  end
end
