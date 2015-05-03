require 'rspec'
require 'rspec/core/rake_task'

desc "Run specs."
RSpec::Core::RakeTask.new :spec => :compile

task :default => :spec