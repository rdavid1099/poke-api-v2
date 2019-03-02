require './spec/spec_helper'

RSpec.describe ErrorHandling do
  describe '#raise_too_many_args_error' do
    it 'raises an exception if both id and name are given' do
      error_msg = 'Too many arguments given; search pokedex using either :id or :name'
      expect{ ErrorHandling.raise_too_many_args_error }.to raise_error(ArgumentError, error_msg)
    end
  end
end
