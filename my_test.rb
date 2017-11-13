# frozen_string_literal: true

require 'test/unit'
require 'test-unit'
require 'rubygems'
require 'selenium-webdriver'
require 'capybara'

class MyTest < Test::Unit::TestCase
  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    Selenium::WebDriver::Firefox.driver_path = 'src/geckodriver'
    @web_driver = Selenium::WebDriver.for :firefox, marionette: true
    @web_driver.manage.window.maximize
    @web_driver.manage.timeouts.implicit_wait = 10
  end

  def test_method_zero
    puts 'Hi'
  end

  def test_method
    @web_driver.get 'http://oppencart.herokuapp.com/index.php?route=common/home'
    @web_driver.find_element(:css, '#search > input').send_keys('keysToSend')
    sleep 5
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    puts 'Exit'
    @web_driver.quit
  end
end
