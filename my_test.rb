# frozen_string_literal: true

require 'test-unit'
require 'rubygems'
require 'selenium-webdriver'

class MyTest < Test::Unit::TestCase
  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    Selenium::WebDriver::Firefox.driver_path = 'src/geckodriver'
    @web_driver = Selenium::WebDriver.for :firefox, marionette: true
    @web_driver.manage.window.maximize
    @web_driver.manage.timeouts.implicit_wait = 10
  end

  def test_method
    @web_driver.get 'http://openncart.herokuapp.com/index.php?route=account/register'
    @web_driver.find_element(:css, "input[name='newsletter'][value='1']").click()
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    puts 'Exit'
    @web_driver.quit
  end
end
