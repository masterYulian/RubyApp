# frozen_string_literal: true

require 'rubygems'
require 'selenium-webdriver'
require 'capybara'

class CssSelectors
  def initialize(url)
    Selenium::WebDriver::Firefox.driver_path = 'src/geckodriver'
    @web_driver = Selenium::WebDriver.for :firefox, marionette: true
    @web_driver.manage.window.maximize
    @web_driver.manage.timeouts.implicit_wait = 10
    @web_driver.navigate.to url
  end

  def quite
    @web_driver.quit
  end

  def image
    @web_driver.find_element(:css, '[alt=MacBook]')
  end


end

browser = CssSelectors.new('http://oppencart.herokuapp.com/index.php?route=common/home')
browser.login_username
browser.login_password
browser.submit_button.click
p browser.checkMessage.text
browser.quite
