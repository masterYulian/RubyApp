
require 'test/unit'
require 'selenium-webdriver'

class TestSimpleNumber < Test::Unit::TestCase

  def setup
    Selenium::WebDriver::Firefox.driver_path = 'src/geckodriver'
    @driver = Selenium::WebDriver.for :firefox
    @driver.manage.window.maximize
    @driver.manage.timeouts.implicit_wait = 5
    @driver.get 'http://openncart.herokuapp.com/'
  end

  def test_simple
    @driver.find_element(:css, '.product-layout:nth-child(2) button:nth-child(2)').click

    sleep 4

    @driver.find_element(:css, '.product-layout:first-child button:nth-child(2)').click

    sleep 4

    @driver.find_element(:css, '.product-layout:nth-child(3) button:nth-child(2)').click
  end

end
