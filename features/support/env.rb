require 'rubygems'
require 'melomel/cucumber'
require 'selenium-webdriver'

# local url to test swf
# using file:// protocol to avoid requiring HTTP server setup
url = "file://#{Dir.pwd}/bin/FlexCucumberMelomelIntro-test.swf"
# local path to chromedriver
webdriver_path = "./bin/chromedriver_" << ((RUBY_PLATFORM =~ /darwin/).nil? ? "win.exe" : "mac")

Before do |scenario|
  # set the chromedriver path
  Selenium::WebDriver::Chrome::Service.executable_path = webdriver_path
  @driver = Selenium::WebDriver.for :chrome
  @driver.navigate.to url
  Melomel.connect()
end

After do |scenario|
  @driver.quit() unless @driver.nil?
end