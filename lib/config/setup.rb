require 'net/http'
require 'json'

path = __dir__
Dir.glob("#{path}/../**/*.rb").each do |file|
  require file.sub('.rb', '').to_s unless file.split('/').last == 'setup.rb'
end
