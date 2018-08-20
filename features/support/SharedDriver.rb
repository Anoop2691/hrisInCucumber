require 'rubygems'
require 'rspec'
require 'selenium-webdriver'

Selenium::WebDriver::Chrome.driver_path="chromedriver.exe"
driver = Selenium::WebDriver.for :chrome
#If you want to run it locally, use Watir::Browser.new :firefox

Before do
  @driver = driver
end
