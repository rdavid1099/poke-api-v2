class Pokemon
  attr_reader :name
  def self.random
    raw_data = Fetcher.call(:pokemon, '151')
    new(raw_data)
  end

  def initialize(data)
    @name = data['name']
  end
end
