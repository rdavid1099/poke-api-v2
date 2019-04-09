require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task default: :spec

desc 'Runs all code quality checks on all files'
task :code_quality do
  sh 'rubocop'
  sh 'reek'
end

namespace :code_quality do
  desc 'Runs rubocop code quality check on all files'
  task :rubocop do
    sh 'rubocop'
  end

  desc 'Runs reek code quality check on all files'
  task :reek do
    sh 'reek'
  end
end
