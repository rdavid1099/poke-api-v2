
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'poke_api/version'

Gem::Specification.new do |spec|
  spec.name          = 'poke-api-v2'
  spec.version       = PokeApi::VERSION
  spec.authors       = ['Ryan Workman']
  spec.email         = ['rdavid1099@gmail.com']

  spec.summary       = %q{Ruby gem wrapper for https://pokeapi.co/api/v2/}
  spec.description   = %q{Ruby gem wrapper for https://pokeapi.co/api/v2/}
  spec.homepage      = 'https://github.com/rdavid1099/poke-api-v2'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'vcr', '~> 4.0.0'
  spec.add_development_dependency 'rubocop', '~> 0.65.0'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'pry'
end
