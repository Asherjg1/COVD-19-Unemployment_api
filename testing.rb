require 'selenium-WebDriver'
@browser=Selenium::WebDriver.for :chrome
@browser.navigate.to "https://airtable.com/embed/shrqYt5kSqMzHV9R5?backgroundColor=green&viewControls=on"
sleep 2
@browser.find_element(class: 'viewMenuPopover').click
sleep 3
@browser.find_element(class: 'viewMenuButton div').click
sleep 2
@browser.quit
