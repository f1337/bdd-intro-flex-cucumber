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

#library :asunit4

# Compile the test swf
# mxmlc "bin/FlexCucumberMelomelIntro-test.swf" => :asunit4 do |t|
mxmlc "bin/FlexCucumberMelomelIntro-test.swf" do |t|
  t.input = "src/FlexCucumberMelomelIntro.mxml"
  t.library_path << 'lib/melomel-0.6.7.swc'
  t.debug = true
end

# run the Cucumber tests
Cucumber::Rake::Task.new(:cucumber) do |task|
  task.cucumber_opts = [ "-s" ]
end


desc "Compile and run the test swf"
task :test => [ "bin/FlexCucumberMelomelIntro-test.swf", :cucumber ]
# flashplayer :test => "bin/FlexCucumberMelomelIntro-test.swf"

task :default => :debug

