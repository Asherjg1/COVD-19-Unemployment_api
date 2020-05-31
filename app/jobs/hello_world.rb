class HelloWorld < ApplicationJob
  require 'selenium-WebDriver'

  queue_as :low_priority
  def perform()
    require 'selenium-WebDriver'
  @browser=Selenium::WebDriver.for :chrome
  @browser.navigate.to "https://airtable.com/embed/shrqYt5kSqMzHV9R5?backgroundColor=green&viewControls=on"
  sleep 2
  @browser.find_element(class: 'viewMenuPopover').click
  sleep 1
  @browser.find_element(class: 'viewMenuButton.pointer')
  end
end
