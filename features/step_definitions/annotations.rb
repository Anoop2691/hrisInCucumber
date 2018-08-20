require 'selenium-webdriver'

#Selenium::WebDriver::Chrome.driver_path="chromedriver.exe"
#@driver = Selenium::WebDriver.for :chrome
Given("the hris page is open") do
  @driver.get "https://hris.qainfotech.com/login.php"
    sleep 2
  @driver.find_element(:xpath=>"//a[@href='#panel1']").click
  # @driver.find_element(:css=>".active>a").click
end

When("I enter the username {string}") do |string|
  @driver.find_element(:css=>"#txtUserName").click
  @driver.find_element(:css=>"#txtUserName").send_keys("anoopkumar")
end

And("I enter the password {string}") do |string|
  @driver.find_element(:css=>"#txtPassword").click
    @driver.find_element(:css=>"#txtPassword").send_keys("anoopkumar")
end

And("I click on Login") do
  @driver.find_element(:css=>".btn").click
  sleep 2
end


Then("User gets on personal homepage") do
  if(@driver.find_element(:xpath=>"//div[@class='col-sm-9 calender_container']").displayed?)
    puts "login successful"
  end
end
