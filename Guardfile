clearing :on

guard :rspec, cmd: "bundle exec rspec" do
  watch(%r{^(app|spec)/(.+)\.rb}) { |m| "spec" }
end


guard 'rake', :task => 'pact:verify' do
  watch('spec/spec_helper.rb') { "spec" }
  watch(%r{^spec/.+_spec\.rb})
  watch(%r{^app/(.+)\.rb}) { |m| "spec" }
end


guard :bundler do
  require 'guard/bundler'
  require 'guard/bundler/verify'
  helper = Guard::Bundler::Verify.new

  files = ['Gemfile']

  # Assume files are symlinked from somewhere
  files.each { |file| watch(helper.real_path(file)) }
end
