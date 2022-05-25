require "selenium/webdriver"

Capybara.register_driver :selenium_chrome do |app|
  config = IntegrationConfig.new
  Capybara::Selenium::Driver.new(app, browser: :chrome, capabilities: config.options)
end

Capybara.register_driver :headless_selenium_chrome do |app|
  config = IntegrationConfig.new
  config.enable_headless_mode!
  Capybara::Selenium::Driver.new(app, browser: :chrome, capabilities: config.options)
end

Capybara.server = :puma, { Silent: true }
Capybara.server_host = "0.0.0.0"
Capybara.server_port = "4000"
