require 'rubygems'
require 'melomel/cucumber'
require 'selenium-webdriver'

webdriver_path = "./bin/chromedriver_" << ((RUBY_PLATFORM =~ /darwin/).nil? ? "win.exe" : "mac")

Before do |scenario|
  Selenium::WebDriver::Chrome::Service.executable_path = webdriver_path
  @driver = Selenium::WebDriver.for :chrome
  @driver.navigate.to "http://localhost/~mf/ninjasandpirates/bdd-intro-flex-cucumber-melomel/bin/FlexCucumberMelomelIntro-test.swf"
  Melomel.connect()
end

After do |scenario|
  @driver.quit() unless @driver.nil?
end