require 'rake'
require 'rspec/core/rake_task'
require 'pact/tasks'

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = Dir.glob('spec/**/*_spec.rb')
  t.rspec_opts = '--color --format documentation'
end

task :default => [:spec, 'pact:verify']
