class HelloWorld < ApplicationJob
  require 'selenium-WebDriver'
  
  queue_as :low_priority
  def perform()
    require 'selenium-WebDriver'
  @browser=Selenium::WebDriver.for :chrome
  @browser.navigate.to "https://www.supremenewyork.com/"
  sleep 2
  @browser.find_element(class: 'shop_link').click
  end
end
