# make sure we're running ruby >= 1.9.2
if (RUBY_VERSION['1.9.2'].nil?)
  puts "Ruby >= 1.9.2 required"
  puts "Type 'rvm use 1.9.2'" unless ENV['rvm_ruby_string'].nil?
  exit
end

# squash the "Global access to Rake DSL methods is deprecated" warnings
include Rake::DSL

require 'rubygems'
require 'bundler'
require 'cucumber/rake/task'
Bundler.require

##############################
# Debug

# Compile the debug swf
mxmlc "bin/FlexCucumberMelomelIntro-debug.swf" do |t|
  t.input = "src/FlexCucumberMelomelIntro.mxml"
  t.library_path << 'lib/melomel-stub-0.6.7.swc'
  t.debug = true
end

desc "Compile and run the debug swf"
flashplayer :debug => "bin/FlexCucumberMelomelIntro-debug.swf"

##############################
# Test

# Compile the test swf
mxmlc "bin/FlexCucumberMelomelIntro-test.swf" do |t|
  t.input = "src/FlexCucumberMelomelIntro.mxml"
  t.library_path << 'lib/melomel-0.6.7.swc'
  t.debug = true
end

# run the Cucumber tests
Cucumber::Rake::Task.new(:cucumber) do |task|
  task.cucumber_opts = [ "-s" ]
end


desc "Compile the test swf and run the Cucumber tests"
task :test => [ "bin/FlexCucumberMelomelIntro-test.swf", :cucumber ]

task :default => :debug

