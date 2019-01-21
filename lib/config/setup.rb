require 'net/http'
require 'json'
Dir.glob("#{PATH}/**/*.rb").each do |file|
  require "#{file.sub('.rb','')}" unless file.split("/").last == "setup.rb"
end
