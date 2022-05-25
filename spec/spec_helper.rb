if ENV.fetch('COVERAGE', false)
  require 'simplecov'

  dir = File.join('coverage', 'backend')
  SimpleCov.coverage_dir(dir)
  SimpleCov.minimum_coverage(100)

  SimpleCov.start 'rails'
end

require 'webmock/rspec'
require 'timecop'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.syntax = :expect
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end

WebMock.disable_net_connect!(allow_localhost: true, allow: [
  'chromedriver.storage.googleapis.com'
  ]
)

# Only allow Timecop with block syntax
Timecop.safe_mode = true