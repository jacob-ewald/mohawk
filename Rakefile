require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'
require 'mohawk'

RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.ruby_opts = "-I lib:spec"
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rspec_opts = "--color -f documentation"
end
task :spec

namespace :features do
  Cucumber::Rake::Task.new(:rautomation) do |t|
    t.profile = 'rautomation'
  end

  Cucumber::Rake::Task.new(:uia) do |t|
    t.profile = 'uia'
    t.cucumber_opts = '--tags @uia'
  end
end

task :features => ['features:rautomation', 'features:uia']

task :default => :spec
