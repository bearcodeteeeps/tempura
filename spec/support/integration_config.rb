require "selenium/webdriver"

class IntegrationConfig
  attr_reader :options

  def initialize
    @options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument("--no-sandbox")
    options.add_argument("--window-size=1400,900")
  end

  def enable_headless_mode!
    options.add_argument("--headless")
  end
end