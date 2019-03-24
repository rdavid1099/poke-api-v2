require 'net/http'
require 'json'

path = __dir__
Dir.glob("#{path}/../**/*.rb").each do |file|
  setup_or_constants = file.split('/').last == 'setup.rb' || file.split('/').last == 'constants.rb'
  require file.sub('.rb', '').to_s unless setup_or_constants
end

require_relative './constants'
