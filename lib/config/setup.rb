require 'net/http'
require 'json'

path = File.expand_path(File.dirname(__FILE__))
Dir.glob("#{path}/../**/*.rb").each do |file|
  require "#{file.sub('.rb','')}" unless file.split("/").last == "setup.rb"
end
